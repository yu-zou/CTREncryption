############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CTREncryption
set_top block_aes_128
add_files CTREncryption/src/SHA1.h
add_files CTREncryption/src/cache.cpp
add_files CTREncryption/src/cache.h
add_files CTREncryption/src/counter_cache.cpp
add_files CTREncryption/src/encryption.cpp
add_files CTREncryption/src/encryption.h
add_files CTREncryption/src/tree.cpp
add_files CTREncryption/src/tree.h
add_files -tb CTREncryption/src/encryption_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xczu7ev-ffvc1156-2-e} -tool vivado
create_clock -period 5 -name default
#source "./CTREncryption/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
