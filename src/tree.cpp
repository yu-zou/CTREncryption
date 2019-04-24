#include "SHA1.h"
#include "cache.h"
#include "ap_int.h"
#include "tree.h"

void IdxSeqGen(
		ap_uint<32> leafNodeIdx,
		ap_uint<32> nodeIdx[NUM_LEVEL]){
#pragma HLS ARRAY_PARTITION variable=nodeIdx complete dim=0
	nodeIdx[NUM_LEVEL-1] = leafNodeIdx;
	for (int i = NUM_LEVEL-2; i >= 0; i--) {
#pragma HLS UNROLL
		nodeIdx[i] = (nodeIdx[i+1] >> 3) - 1;
	}
}

void readChildAndParent(
		//output
		ap_uint<512> 	childBlock[NUM_LEVEL+1],
		ap_uint<64> 	parentWord[NUM_LEVEL+1],

		//input
		ap_uint<32> 	nodeIdx[NUM_LEVEL],

		volatile 		ap_uint<512> *dram,
		ap_uint<64> 	root,
		ap_uint<512> 	counterBlock) {
#pragma HLS ALLOCATION instances=PLRUCache limit=1 function
#pragma HLS ARRAY_PARTITION variable=childBlock complete dim=0
#pragma HLS ARRAY_PARTITION variable=parentWord complete dim=0
#pragma HLS ARRAY_PARTITION variable=nodeIdx complete dim=0
	childBlock[NUM_LEVEL] 	= counterBlock;
	parentWord[0] 			= root;
	for (int i = NUM_LEVEL-1; i >= 0; i--) {
//#pragma HLS PIPELINE
		ap_uint<32> idx 		= nodeIdx[i];
		ap_uint<32> blockIdx 	= idx >> 3;
		ap_uint<32> wordOffset 	= idx(2, 0);
//		ap_uint<512> data 	= dram[blockIdx + MT_BASE];
		ap_uint<512> data	= PLRUCache(blockIdx+MT_BASE, 0, false, dram);
		childBlock[i] 		= data;
		parentWord[i+1] 	= data(wordOffset*64+63, wordOffset*64);
	}
}

bool parallelVerification(
		ap_uint<512> 			childBlock[NUM_LEVEL+1],
		ap_uint<64> 			parentWord[NUM_LEVEL+1]){
#pragma HLS ARRAY_PARTITION variable=childBlock complete dim=0
#pragma HLS ARRAY_PARTITION variable=parentWord complete dim=0
	ap_uint<NUM_LEVEL+1> isVerified;
	for (int i = 0; i < NUM_LEVEL+1; i++) {
#pragma HLS UNROLL
		isVerified(i, i) = (SHA1(childBlock[i]) == parentWord[i]) ? 1 : 0;
	}
	return isVerified.and_reduce();
}

res_t ReadCounter(
		ap_uint<32> 			counterBlockIdx,
		ap_uint<64> 			root,
		volatile ap_uint<512> 	*dram) {
	res_t res;
	ap_uint<512> counterBlock = dram[counterBlockIdx + COUNTER_BASE];

	ap_uint<32> 	nodeIdx[NUM_LEVEL];
	ap_uint<512> 	childBlock[NUM_LEVEL+1];
	ap_uint<64> 	parentWord[NUM_LEVEL+1];
#pragma HLS ARRAY_PARTITION variable=nodeIdx complete dim=0
#pragma HLS ARRAY_PARTITION variable=childBlock complete dim=0
#pragma HLS ARRAY_PARTITION variable=parentWord complete dim=0

	IdxSeqGen(counterBlockIdx + ((1<<(3*NUM_LEVEL)) - 8) / 7, nodeIdx);

	readChildAndParent(childBlock, parentWord, nodeIdx, dram, root, counterBlock);

	bool isVerified = parallelVerification(childBlock, parentWord);

	res.counterBlock = counterBlock; res.isVerified = isVerified;
	return res;
}

void WriteCounter(
		ap_uint<32> 			counterBlockIdx,
		ap_uint<512> 			counterBlockW,
		ap_uint<64> 			*root,
		volatile ap_uint<512> 	*dram) {
#pragma HLS ALLOCATION instances=PLRUCache limit=1 function
	dram[counterBlockIdx + COUNTER_BASE] = counterBlockW;

	ap_uint<32> nodeIdx[NUM_LEVEL];
#pragma HLS ARRAY_PARTITION variable=nodeIdx complete dim=0
	IdxSeqGen(counterBlockIdx + ((1<<(3*NUM_LEVEL)) - 8) / 7, nodeIdx);

	ap_uint<64> temp = SHA1(counterBlockW);
	for (int i = NUM_LEVEL-1; i >= 0; i--) {
		ap_uint<32> idx 						= nodeIdx[i];
		ap_uint<32> blockIdx 					= idx >> 3;
		ap_uint<32> wordOffset 					= idx(2, 0);
//		ap_uint<512> data 						= dram[blockIdx];
		ap_uint<512> data						= PLRUCache(blockIdx+MT_BASE, 0, false, dram);
		data(wordOffset*64+63, wordOffset*64) 	= temp;
		temp 									= SHA1(data);
//		dram[blockIdx] 							= data;
		PLRUCache(blockIdx+MT_BASE, data, true, dram);
	}
	*root = temp;
}

res_t MerkleTreeBaseline(
		bool 					counterOp,//0-read,1-write
		ap_uint<32> 			counterBlockIdx,
		ap_uint<512> 			counterBlockW,
		volatile ap_uint<512> 	*dram) {
#pragma HLS INTERFACE m_axi depth=100000 port=dram offset=direct bundle=data
	static ap_uint<64> root = 0;

	res_t res;
	if (counterOp == false) {
		//read
		res = ReadCounter(counterBlockIdx, root, dram);
		return res;
	} else {
		//write
		WriteCounter(counterBlockIdx, counterBlockW, &root, dram);
		return res;
	}
}
