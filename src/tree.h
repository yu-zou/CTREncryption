#ifndef TREE_H
#define TREE_H

#include "ap_int.h"

#define NUM_LEVEL		5//number of levels except root level and counter level
#define NUM_BUFFERED	128//number of MT cachelines buffered

#define DATA_BASE		0
#define MT_BASE 		0
#define COUNTER_BASE 	(((1 << (3 * NUM_LEVEL)) - 1) / 7 + MT_BASE)//(8^1+...+8^NUM_LEVEL)/8

typedef struct {
	ap_uint<512> 	counterBlock;
	bool 			isVerified;
} res_t;

res_t MerkleTreeBaseline(
		bool 					counterOp,//0-read,1-write
		ap_uint<32> 			counterBlockIdx,
		ap_uint<512> 			counterBlockW,
		volatile ap_uint<512> 	*dram);

#endif
