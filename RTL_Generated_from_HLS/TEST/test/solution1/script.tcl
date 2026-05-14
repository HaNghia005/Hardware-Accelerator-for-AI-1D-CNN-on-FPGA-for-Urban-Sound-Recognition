############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project test
set_top CNN
add_files ../../Py2C/venv/Pool.h
add_files ../../Py2C/venv/Pool.cpp
add_files ../../Py2C/venv/Conv.h
add_files ../../Py2C/venv/Conv.cpp
add_files ../../Py2C/venv/CNN.h
add_files ../../Py2C/venv/CNN.cpp
add_files -tb ../../Py2C/Y.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../../Py2C/X.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../../Py2C/venv/Float_Weights.txt -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../../Py2C/venv/CNN_tb.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
config_export -format ip_catalog -output D:/DOWNLOAD/Documents/KLTN/Sound_Classification -rtl verilog
source "./test/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output D:/DOWNLOAD/Documents/KLTN/Sound_Classification
