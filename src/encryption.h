#ifndef ENCRYPTION_H
#define ENCRYPTION_H

#include "ap_int.h"

typedef ap_uint<8> byte;

void key_expansion(ap_uint<128> key, ap_uint<128> sub_key[11], const byte rcon[11], const byte sbox[256]);
ap_uint<128> aes_128(ap_uint<128> in, ap_uint<128> key, bool init);
ap_uint<512> block_aes_128(ap_uint<128> IV, ap_uint<128> key, bool init);

#endif
