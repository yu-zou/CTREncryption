#include "encryption.h"
#include <iostream>
#include <assert.h>
using namespace std;

int main() {
	//init
	char str[] = "deadbeaftestcode";
	ap_uint<128> key;
	for (int i = 0; i < 16; i++) {
		key((15-i)*8+7, (15-i)*8) = str[i];
	}
	cout << hex << key << endl;
	aes_128(0, key, true);
	//test
	ap_uint<128> in;
	for (int i = 0; i < 16; i++) {
		in((15-i)*8+7, (15-i)*8) = str[i];
	}
	assert (aes_128(in, key, false).range(63, 0) == 0xD19AB49614AC9148);
	assert (aes_128(in, key, false).range(127, 64) == 0xD9F3C7D66A1847EC);
	//test
	block_aes_128(in, key, true);
	assert (block_aes_128(in, key, false).range(3*128+63, 3*128+0) == 0xD19AB49614AC9148);
	assert (block_aes_128(in, key, false).range(3*128+127, 3*128+64) == 0xD9F3C7D66A1847EC);
}
