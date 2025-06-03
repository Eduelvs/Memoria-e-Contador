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
// CREATED		"Wed Jun 28 08:32:18 2023"

module seletor(
	A,
	B,
	Sel,
	mem_a,
	mem_c,
	mem_b
);


input wire	A;
input wire	B;
input wire	Sel;
output wire	mem_a;
output wire	mem_c;
output wire	mem_b;

wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;




assign	mem_a = B | SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_6 = A | SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_5 = A | SYNTHESIZED_WIRE_7 | B;

assign	SYNTHESIZED_WIRE_2 =  ~B;

assign	SYNTHESIZED_WIRE_7 =  ~Sel;

assign	SYNTHESIZED_WIRE_1 =  ~A;

assign	mem_b =  ~SYNTHESIZED_WIRE_5;

assign	mem_c =  ~SYNTHESIZED_WIRE_6;


endmodule
