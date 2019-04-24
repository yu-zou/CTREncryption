#include "tree.h"
#include "ap_int.h"

#define ADDR_WIDTH 	32
#define INDEX_WIDTH	8
#define TAG_WIDTH	(ADDR_WIDTH-INDEX_WIDTH)
#define NUM_WAYS	8
#define NUM_INDICES	(1 << INDEX_WIDTH)

typedef ap_uint<512> 	data_t;
typedef ap_uint<32> 	addr_t;

data_t ReadCounterMiss(
		addr_t	i_addr,
		data_t	i_wdata,
		bool	i_op,

		volatile data_t *dram,

		ap_uint<NUM_WAYS>	valid,
		ap_uint<TAG_WIDTH>	tag[NUM_WAYS],

		ap_uint<NUM_WAYS> 			validArray[NUM_INDICES],
		ap_uint<TAG_WIDTH> 			tagArray[NUM_INDICES][NUM_WAYS],
		ap_uint<512> 				dataArray[NUM_INDICES][NUM_WAYS],
		ap_uint<NUM_WAYS> 			mruArray[NUM_INDICES]){
#pragma HLS INLINE off
	ap_uint<INDEX_WIDTH> indexReg 	= i_addr(INDEX_WIDTH-1, 0);
	ap_uint<TAG_WIDTH> tagReg 		= i_addr(INDEX_WIDTH+TAG_WIDTH-1, INDEX_WIDTH);

	//read mru
	ap_uint<NUM_WAYS> tempMru = mruArray[indexReg];

	//on read miss, find the way to evict
	int evictWay; bool isEvict;
	if (valid.and_reduce() == false) {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			if (valid(i, i) == false) {
				evictWay = i;
				isEvict = false;
				break;
			}
		}
	} else {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			if (tempMru(i, i) == false) {
				evictWay = i;
				isEvict = true;
				break;
			}
		}
	}

	//read counter from DRAM
//	data_t i_dramBlockR = dram[i_addr];
	res_t temp = MerkleTreeBaseline(false, i_addr-COUNTER_BASE, 0, dram);
	data_t i_counterBlockR = temp.counterBlock;

	//write back victim
	if (isEvict == true) {
//		dram[tag[evictWay].concat(indexReg)] = dataArray[indexReg][evictWay];
		MerkleTreeBaseline(true, tag[evictWay].concat(indexReg)-COUNTER_BASE, dataArray[indexReg][evictWay], dram);
	}

	//update cache
	tagArray[indexReg][evictWay] 				= tagReg;
	dataArray[indexReg][evictWay] 				= i_counterBlockR;
//	validArray[indexReg](evictWay, evictWay) 	= true;
	ap_uint<NUM_WAYS> tempValid = valid; tempValid(evictWay, evictWay) = true;
	validArray[indexReg] = tempValid;
	tempMru(evictWay, evictWay) 				= true;

	//update mru
	if (tempMru.and_reduce() == true) {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			tempMru(i, i) = (i == indexReg);
		}
		mruArray[indexReg] = tempMru;
	}

	return i_counterBlockR;
}

void WriteCounterMiss(
		addr_t	i_addr,
		data_t	i_wdata,
		bool	i_op,

		volatile data_t *dram,

		ap_uint<NUM_WAYS>	valid,
		ap_uint<TAG_WIDTH> 	tag[NUM_WAYS],

		ap_uint<NUM_WAYS> 			validArray[NUM_INDICES],
		ap_uint<TAG_WIDTH> 			tagArray[NUM_INDICES][NUM_WAYS],
		ap_uint<512> 				dataArray[NUM_INDICES][NUM_WAYS],
		ap_uint<NUM_WAYS> 			mruArray[NUM_INDICES]){
#pragma HLS INLINE off
	ap_uint<INDEX_WIDTH> indexReg 	= i_addr(INDEX_WIDTH-1, 0);
	ap_uint<TAG_WIDTH> tagReg 		= i_addr(INDEX_WIDTH+TAG_WIDTH-1, INDEX_WIDTH);

	//read mru
	ap_uint<NUM_WAYS> tempMru = mruArray[indexReg];

	//on write miss, find the way to evict
	int evictWay; bool isEvict;
	if (valid.and_reduce() == false) {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			if (valid(i, i) == false) {
				evictWay = i;
				isEvict = false;
				break;
			}
		}
	} else {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			if (tempMru(i, i) == false) {
				evictWay = i;
				isEvict = true;
				break;
			}
		}
	}

	//write back victim
	if (isEvict == true) {
//		dram[tag[evictWay].concat(indexReg)] = dataArray[indexReg][evictWay];
		MerkleTreeBaseline(true, tag[evictWay].concat(indexReg)-COUNTER_BASE, dataArray[indexReg][evictWay], dram);
	}

	//write cache
	tagArray[indexReg][evictWay] 				= tagReg;
	dataArray[indexReg][evictWay] 				= i_wdata;
//	validArray[indexReg](evictWay, evictWay) 	= true;
	ap_uint<NUM_WAYS> tempValid = valid; tempValid(evictWay, evictWay) = true;
	validArray[indexReg] = tempValid;
	tempMru(evictWay, evictWay) 				= true;

	//update mru
	if (tempMru.and_reduce() == true) {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			tempMru(i, i) = (i == indexReg);
		}
		mruArray[indexReg] = tempMru;
	}
}
