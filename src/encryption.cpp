#include "encryption.h"
#include "ap_int.h"

#ifndef __SYNTHESIS__
#include <iostream>
using namespace std;
#endif

void sub_byte(byte in_state[4][4], byte out_state[4][4], const byte sbox[256]) {
#pragma HLS ARRAY_PARTITION variable=in_state complete dim=0
#pragma HLS ARRAY_PARTITION variable=out_state complete dim=0
#pragma HLS ARRAY_PARTITION variable=sbox complete dim=0
	for (int row = 0; row < 4; row++) {
#pragma HLS UNROLL
		for (int col = 0; col < 4; col++) {
#pragma HLS UNROLL
			out_state[row][col] = sbox[in_state[row][col]];
		}
	}
}

void sub_byte_block(byte in_state[4][4][4], byte out_state[4][4][4], const byte sbox[256]) {
#pragma HLS ARRAY_PARTITION variable=in_state complete dim=0
#pragma HLS ARRAY_PARTITION variable=out_state complete dim=0
#pragma HLS ARRAY_PARTITION variable=sbox complete dim=0
	for (int block = 0; block < 4; block++) {
#pragma HLS UNROLL
		for (int row = 0; row < 4; row++) {
#pragma HLS UNROLL
			for (int col = 0; col < 4; col++) {
#pragma HLS UNROLL
				out_state[block][row][col] = sbox[in_state[block][row][col]];
			}
		}
	}
}

void shift_row(byte in_state[4][4], byte out_state[4][4]) {
#pragma HLS ARRAY_PARTITION variable=in_state complete dim=0
#pragma HLS ARRAY_PARTITION variable=out_state complete dim=0
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

void shift_row_block(byte in_state[4][4][4], byte out_state[4][4][4]) {
#pragma HLS ARRAY_PARTITION variable=in_state complete dim=0
#pragma HLS ARRAY_PARTITION variable=out_state complete dim=0
	for (int block = 0; block < 4; block++) {
#pragma HLS UNROLL
		//first row
		out_state[block][0][0] = in_state[block][0][0];
		out_state[block][0][1] = in_state[block][0][1];
		out_state[block][0][2] = in_state[block][0][2];
		out_state[block][0][3] = in_state[block][0][3];
		//second row
		out_state[block][1][0] = in_state[block][1][1];
		out_state[block][1][1] = in_state[block][1][2];
		out_state[block][1][2] = in_state[block][1][3];
		out_state[block][1][3] = in_state[block][1][0];
		//third row
		out_state[block][2][0] = in_state[block][2][2];
		out_state[block][2][1] = in_state[block][2][3];
		out_state[block][2][2] = in_state[block][2][0];
		out_state[block][2][3] = in_state[block][2][1];
		//fourth row
		out_state[block][3][0] = in_state[block][3][3];
		out_state[block][3][1] = in_state[block][3][0];
		out_state[block][3][2] = in_state[block][3][1];
		out_state[block][3][3] = in_state[block][3][2];
	}
}

byte xtime(byte x) {
#pragma HLS INLINE
	return ((x<<1) ^ (((x>>7) & 1) * 0x1b));
}

void mix_column(ap_uint<8> in_state[4][4], ap_uint<8> out_state[4][4]) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=in_state complete dim=0
#pragma HLS ARRAY_PARTITION variable=out_state complete dim=0
	for (int i = 0; i < 4; i++) {
#pragma HLS UNROLL
		ap_uint<8> tmp = in_state[0][i] ^ in_state[1][i] ^ in_state[2][i] ^ in_state[3][i];
		ap_uint<8> tm_0 = xtime(in_state[0][i] ^ in_state[1][i]);
		ap_uint<8> tm_1 = xtime(in_state[1][i] ^ in_state[2][i]);
		ap_uint<8> tm_2 = xtime(in_state[2][i] ^ in_state[3][i]);
		ap_uint<8> tm_3 = xtime(in_state[3][i] ^ in_state[0][i]);
		out_state[0][i] = in_state[0][i] ^ tm_0 ^ tmp;
		out_state[1][i] = in_state[1][i] ^ tm_1 ^ tmp;
		out_state[2][i] = in_state[2][i] ^ tm_2 ^ tmp;
		out_state[3][i] = in_state[3][i] ^ tm_3 ^ tmp;
	}
}

void mix_column_block(ap_uint<8> in_state[4][4][4], ap_uint<8> out_state[4][4][4]) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=in_state complete dim=0
#pragma HLS ARRAY_PARTITION variable=out_state complete dim=0
	for (int block = 0; block < 4; block++) {
#pragma HLS UNROLL
		for (int i = 0; i < 4; i++) {
#pragma HLS UNROLL
			byte state0 = in_state[block][0][i];
			byte state1 = in_state[block][1][i];
			byte state2 = in_state[block][2][i];
			byte state3 = in_state[block][3][i];
			ap_uint<8> tmp = state0 ^ state1 ^ state2 ^ state3;
			ap_uint<8> tm_0 = xtime(state0 ^ state1);
			ap_uint<8> tm_1 = xtime(state1 ^ state2);
			ap_uint<8> tm_2 = xtime(state2 ^ state3);
			ap_uint<8> tm_3 = xtime(state3 ^ state0);
			out_state[block][0][i] = state0 ^ tm_0 ^ tmp;
			out_state[block][1][i] = state1 ^ tm_1 ^ tmp;
			out_state[block][2][i] = state2 ^ tm_2 ^ tmp;
			out_state[block][3][i] = state3 ^ tm_3 ^ tmp;
		}
	}
}

void add_round_key(byte in_state[4][4], byte out_state[4][4], ap_uint<128> sub_key) {
#pragma HLS ARRAY_PARTITION variable=in_state complete dim=0
#pragma HLS ARRAY_PARTITION variable=out_state complete dim=0
	for (int row = 0; row < 4; row++) {
#pragma HLS UNROLL
		for (int col = 0; col < 4; col++) {
#pragma HLS UNROLL
			out_state[row][col] = in_state[row][col] ^ sub_key((3-col)*32+(3-row)*8+7, (3-col)*32+(3-row)*8);
		}
	}
}

void add_round_key_block(byte in_state[4][4][4], byte out_state[4][4][4], ap_uint<128> sub_key) {
#pragma HLS ARRAY_PARTITION variable=in_state complete dim=0
#pragma HLS ARRAY_PARTITION variable=out_state complete dim=0
	for (int row = 0; row < 4; row++) {
#pragma HLS UNROLL
		for (int col = 0; col < 4; col++) {
#pragma HLS UNROLL
			ap_uint<128> key = sub_key((3-col)*32+(3-row)*8+7, (3-col)*32+(3-row)*8);
			for (int block = 0; block < 4; block++) {
#pragma HLS UNROLL
				out_state[block][row][col] = in_state[block][row][col] ^ key;
			}
		}
	}
}

//key layout
/*
 * key[127:120](k0)	key[95:88](k4)	key[63:56](k8)	key[31:24](k12)
 * key[119:112](k1)	key[87:80](k5)	key[55:48](k9)	key[23:16](k13)
 * key[111:104](k2)	key[79:72](k6)	key[47:40](k10)	key[15:8](k14)
 * key[103:96](k3)	key[71:64](k7)	key[39:32](k11)	key[7:0](k15)
 * */
/*
 * column[w0, w1, w2, w3].
 * w0 = <k0, k1, k2, k3>
 * w1 = <k4, k5, k6, k7>
 * w2 = <k8, k9, k10, k11>
 * w3 = <k12, k13, k14, k15>
 * */
void key_expansion(ap_uint<128> key, ap_uint<128> sub_key[11], const byte rcon[11], const byte sbox[256]) {
#pragma HLS ARRAY_PARTITION variable=sbox complete dim=0
#pragma HLS INLINE off
	//first round key is the key itself
	sub_key[0] = key;
	//all other round keys are found from the previous round keys
	for (int round = 0; round <= 9; round++) {
		/*w(i+4) = w(i) XOR g(w(i+3))*/
		ap_uint<32> word = sub_key[round](31, 0);
		//left-rotate
		word = word.lrotate(8);
		//byte substitution
		for (int i = 0; i < 4; i++) {
#pragma HLS UNROLL
			word(i*8+7, i*8) = sbox[word(i*8+7, i*8)];
		}
		//xor round constant
		word(3*8+7, 3*8) = word(3*8+7, 3*8) ^ rcon[round+1];
		sub_key[round+1](127, 96) = word ^ sub_key[round](127, 96);
		/**/
		sub_key[round+1](95, 64) = sub_key[round+1](127, 96) ^ sub_key[round](95, 64);
		sub_key[round+1](63, 32) = sub_key[round+1](95, 64) ^ sub_key[round](63, 32);
		sub_key[round+1](31, 0) = sub_key[round+1](63, 32) ^ sub_key[round](31, 0);
	}
	//print
#ifndef __SYNTHESIS__
	for (int round = 0; round < 11; round++) {
		printf ("round %d:\n", round);
		for (int row = 0; row < 4; row++) {
			for (int col = 0; col < 4; col++) {
				printf ("%d\t", sub_key[round]((3-col)*32+(3-row)*8+7, (3-col)*32+(3-row)*8).to_uint());
			}
			printf ("\n");
		}
	}
#endif
}

ap_uint<128> proc(ap_uint<128> in, ap_uint<128> sub_key[11], const byte rcon[11], const byte sbox[256]) {
#pragma HLS ARRAY_PARTITION variable=sbox complete dim=0
#pragma HLS INLINE off
	byte state[2][4][4];
#pragma HLS ARRAY_PARTITION variable=state complete dim=0
	for (int row = 0; row < 4; row++) {
#pragma HLS UNROLL
		for (int col = 0; col < 4; col++) {
#pragma HLS UNROLL
			state[0][row][col] = in((3-col)*32+(3-row)*8+7, (3-col)*32+(3-row)*8);
		}
	}
	//first round
	add_round_key(state[0], state[1], sub_key[0]);
	loop_main: for (int round = 1; round <= 9; round++) {
#pragma HLS PIPELINE
		byte tempState0[4][4], tempState1[4][4], tempState2[4][4];
		//substitute
		sub_byte(state[round%2], tempState0, sbox);
		//shift
		shift_row(tempState0, tempState1);
		//mix_column
		mix_column(tempState1, tempState2);
		//add round key
		add_round_key(tempState2, state[(round+1)%2], sub_key[round]);
	}
	//last round
	byte tempState0[4][4], tempState1[4][4];
	//substitute
	sub_byte(state[10%2], tempState0, sbox);
	//shift
	shift_row(tempState0, tempState1);
	//add round key
	add_round_key(tempState1, state[11%2], sub_key[10]);

	ap_uint<128> out;
	for (int row = 0; row < 4; row++) {
#pragma HLS UNROLL
		for (int col = 0; col < 4; col++) {
#pragma HLS UNROLL
			out((3-col)*32+(3-row)*8+7, (3-col)*32+(3-row)*8) = state[11%2][row][col];
		}
	}
	return out;
}

ap_uint<512> proc_block(ap_uint<128> in, ap_uint<128> sub_key[11], const byte rcon[11], const byte sbox[256]) {
#pragma HLS ARRAY_PARTITION variable=sbox complete dim=0
#pragma HLS INLINE off
	byte state[2][4][4][4];
#pragma HLS ARRAY_PARTITION variable=state complete dim=0
	ap_uint<128> input[4];
#pragma HLS ARRAY_PARTITION variable=input complete dim=0
	for (int block = 0; block < 4; block++) {
#pragma HLS UNROLL
		input[block] = in + block;
	}
	for (int row = 0; row < 4; row++) {
#pragma HLS UNROLL
		for (int col = 0; col < 4; col++) {
#pragma HLS UNROLL
			for (int block = 0; block < 4; block++) {
#pragma HLS UNROLL
				state[0][block][row][col] = input[block]((3-col)*32+(3-row)*8+7, (3-col)*32+(3-row)*8);
			}
		}
	}
	//first round
	add_round_key_block(state[0], state[1], sub_key[0]);

	loop_main: for (int round = 1; round <= 9; round++) {
#pragma HLS PIPELINE
		byte tempState0[4][4][4], tempState1[4][4][4], tempState2[4][4][4];
		//substitute
		sub_byte_block(state[round%2], tempState0, sbox);
		//shift
		shift_row_block(tempState0, tempState1);
		//mix_column
		mix_column_block(tempState1, tempState2);
		//add round key
		add_round_key_block(tempState2, state[(round+1)%2], sub_key[round]);
	}
	//last round
	byte tempState0[4][4][4], tempState1[4][4][4];
	//substitute
	sub_byte_block(state[10%2], tempState0, sbox);
	//shift
	shift_row_block(tempState0, tempState1);
	//add round key
	add_round_key_block(tempState1, state[11%2], sub_key[10]);

	ap_uint<512> out;
	for (int row = 0; row < 4; row++) {
#pragma HLS UNROLL
		for (int col = 0; col < 4; col++) {
#pragma HLS UNROLL
			for (int block = 0; block < 4; block++) {
#pragma HLS UNROLL
				out((3-block)*128+(3-col)*32+(3-row)*8+7, (3-block)*128+(3-col)*32+(3-row)*8) = state[11%2][block][row][col];
			}
		}
	}
	return out;
}

ap_uint<128> aes_128(ap_uint<128> in, ap_uint<128> key, bool init) {
	static ap_uint<128> sub_key[11];
	static const byte sbox[256] = {
			//0     1    2      3     4    5     6     7      8    9     A      B    C     D     E     F
			0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,//0
			0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,//1
			0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,//2
			0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,//3
			0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,//4
			0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,//5
			0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,//6
			0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,//7
			0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,//8
			0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,//9
			0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,//A
			0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,//B
			0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,//C
			0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,//D
			0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,//E
			0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16 /*F*/};
#pragma HLS ARRAY_PARTITION variable=s_box complete dim=0
	static const byte rcon[11] = {
			0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36 };
	ap_uint<128> out;
	if (init == true) {
		key_expansion(key, sub_key, rcon, sbox);
	} else {
		out = proc(in, sub_key, rcon, sbox);
	}
	return out;
}

ap_uint<512> block_aes_128(ap_uint<128> IV, ap_uint<128> key, bool init) {
	static ap_uint<128> sub_key[11];
	static const byte sbox[256] = {
			//0     1    2      3     4    5     6     7      8    9     A      B    C     D     E     F
			0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
			0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
			0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
			0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
			0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
			0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
			0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
			0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
			0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
			0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
			0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
			0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
			0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
			0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
			0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
			0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16 };
#pragma HLS ARRAY_PARTITION variable=sbox complete dim=0
	static const byte rcon[11] = {
			0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36 };
	ap_uint<512> otp;
	if (init == true) {
		key_expansion(key, sub_key, rcon, sbox);
	} else {
		otp = proc_block(IV, sub_key, rcon, sbox);
	}
	return otp;
}
