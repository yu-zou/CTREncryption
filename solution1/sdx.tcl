# ==============================================================
# File generated on Tue Apr 23 18:05:14 EDT 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../src/encryption_tb.cpp -cflags { -Wno-unknown-pragmas}
add_files CTREncryption/src/SHA1.h
add_files CTREncryption/src/cache.cpp
add_files CTREncryption/src/cache.h
add_files CTREncryption/src/counter_cache.cpp
add_files CTREncryption/src/encryption.cpp
add_files CTREncryption/src/encryption.h
add_files CTREncryption/src/tree.cpp
add_files CTREncryption/src/tree.h
set_part xczu7ev-ffvc1156-2-e
create_clock -name default -period 5
