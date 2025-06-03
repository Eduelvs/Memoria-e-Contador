// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Wed Jun 28 08:32:51 2023"

module cRW(
	mem_c,
	sRnW,
	cnr,
	cnw
);


input wire	mem_c;
input wire	sRnW;
output wire	cnr;
output wire	cnw;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_3;




assign	cnr = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_3;

assign	cnw = sRnW | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_3 =  ~mem_c;

assign	SYNTHESIZED_WIRE_0 =  ~sRnW;


endmodule
