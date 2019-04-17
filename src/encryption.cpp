#include "ap_int.h"
#include "cache.h"
#include "params.h"

typedef ap_uint<8> byte;

void shift_row(byte in_state[4][4], byte out_state[4][4]) {
#pragma HLS ARRAY_PARTITION variable=in_state complete dim=0
#pragma HLS ARRAY_PARTITION varialble=out_state complete dim=0
	//first row
	out_state[0][0] = in_state[0][0];
	out_state[0][1] = in_state[0][1];
	out_state[0][2] = in_state[0][2];
	out_state[0][3] = in_state[0][3];
	//second row
	out_state[1][0] = in_state[1][1];
	out_state[1][1] = in_state[1][2];
	out_state[1][2] = in_state[1][3];
	out_state[1][3] = in_state[1][0];
	//third row
	out_state[2][0] = in_state[2][2];
	out_state[2][1] = in_state[2][3];
	out_state[2][2] = in_state[2][0];
	out_state[2][3] = in_state[2][1];
	//fourth row
	out_state[3][0] = in_state[3][3];
	out_state[3][1] = in_state[3][0];
	out_state[3][2] = in_state[3][1];
	out_state[3][3] = in_state[3][2];
}

ap_uint<512> CTREncryption(
		bool 			op/*0-read,1-write*/,
		ap_uint<32> 	addr,//in granularity of 512-bit
		ap_uint<512> 	wdata,
		ap_uint<512> 	*dram) {
	if (op == false) {
		ap_uint<32> dataIdx = addr - DATA_CACHELINE_BASE_IDX;
		ap_uint<32> counterIdx = dataIdx >> 6;
		//read counter first
		ap_uint<512> counterBlock = PLRUCache(counterIdx + COUNTER_CACHELINE_BASE_IDX, 0, false, dram);
		//aes_128 counter
		ap_uint<64> majorCounter = counterBlock(448, 511);
		ap_uint<7> minorCounter = counterBlock(dataIdx(0, 5) * 7, dataIdx(0, 5) * 7 + 6);
		ap_uint<128> otp = 0;
		//xor otp with read data
	} else if (op == true) {
		//read counter first
		//aes_128 counter
		//xor otp with data to write, and write to dram
		//increment counter and write to counter
	}
}
