#ifndef _SHA1_H
#define _SHA1_H

#include "ap_int.h"

ap_uint<64> SHA1(ap_uint<512> input) {
	ap_uint<32> h0 = 0x67452301;
	ap_uint<32> h1 = 0xEFCDAB89;
	ap_uint<32> h2 = 0x98BADCFE;
	ap_uint<32> h3 = 0x10325476;
	ap_uint<32> h4 = 0xC3D2E1F0;
	const ap_uint<64> ml = 512;
	ap_uint<1024> message;
	message(1023, 512) = input; message(511, 511) = 1; message(510, 64) = 0; message(63, 0) = ml;
	for (int i = 0; i < 2; i++) {
		ap_uint<512> chunk = message(i*512+511, i*512);
		ap_uint<32> w[80];
#pragma HLS ARRAY_PARTITION variable=w complete dim=0

		ap_uint<32> a = h0;
		ap_uint<32> b = h1;
		ap_uint<32> c = h2;
		ap_uint<32> d = h3;
		ap_uint<32> e = h4;
		loop_main: for (int j = 0; j < 80; j++) {
#pragma HLS PIPELINE
			ap_uint<32> temp;
			if (j < 16) {
				//loop init
				temp = chunk(j*32+31, j*32);
			} else {
				//loop extend
				ap_uint<32> temp = w[j-3] ^ w[j-8] ^ w[j-14] ^ w[j-16];
				temp.lrotate(1);
			}
			w[j] = temp;
			ap_uint<32> f, k;
			if (j >= 0 && j <= 19) {
				f = (b & c) | ((~b) & d);
				k = 0x5a827999;
			} else if (j >= 20 && j <= 39) {
				f = b ^ c ^ d;
				k = 0x6ed9eba1;
			} else if (j >= 40 && j <= 59) {
				f = (b & c) | (b & d) | (c & d);
				k = 0x8f1bbcdc;
			} else if (j >= 60 && j <= 79) {
				f = b ^ c ^ d;
				k = 0xca62c1d6;
			}
			ap_uint<32> lshr_a = a;
			ap_uint<32> lshr_b = b;
			lshr_a.lrotate(5);
			lshr_b.lrotate(30);
			ap_uint<32> temp1 = lshr_a + f + e + k + w[j];
			e = d;
			d = c;
			c = lshr_b;
			b = a;
			a = temp1;
		}
		h0 += a;
		h1 += b;
		h2 += c;
		h3 += d;
		h4 += e;
	}
	ap_uint<160> hh;
	hh(159, 128) = h0; hh(127, 96) = h1; hh(95, 64) = h2; hh(63, 32) = h3; hh(31, 0) = h4;
	return hh(63, 0);
}

#endif
