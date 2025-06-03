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
// CREATED		"Wed Jun 28 08:28:43 2023"

module mem_s(
	sRnW,
	sCE,
	sA,
	sD
);


input wire	sRnW;
input wire	sCE;
input wire	[6:0] sA;
inout wire	[4:0] sD;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;





mem_c	b2v_inst(
	.cnr(SYNTHESIZED_WIRE_0),
	.cnw(SYNTHESIZED_WIRE_1),
	.ca(sA[4:0]),
	.cd(sD)
	);
	defparam	b2v_inst.ADDR_WIDTH = 5;
	defparam	b2v_inst.DATA_WIDTH = 5;


mem_a	b2v_inst1(
	.arnw(sRnW),
	.ance(SYNTHESIZED_WIRE_2),
	.aa(sA[3:0]),
	.ad(sD)
	);
	defparam	b2v_inst1.ADDR_WIDTH = 4;
	defparam	b2v_inst1.DATA_WIDTH = 5;


cRW	b2v_inst11(
	.mem_c(SYNTHESIZED_WIRE_3),
	.sRnW(sRnW),
	.cnr(SYNTHESIZED_WIRE_0),
	.cnw(SYNTHESIZED_WIRE_1));


mem_b	b2v_inst2(
	.brnw(sRnW),
	.bce(SYNTHESIZED_WIRE_4),
	.ba(sA[4:0]),
	.bd(sD)
	);
	defparam	b2v_inst2.ADDR_WIDTH = 5;
	defparam	b2v_inst2.DATA_WIDTH = 5;


seletor	b2v_inst3(
	.A(sA[6]),
	.B(sA[5]),
	.Sel(sCE),
	.mem_a(SYNTHESIZED_WIRE_5),
	.mem_b(SYNTHESIZED_WIRE_4),
	.mem_c(SYNTHESIZED_WIRE_3));

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_5 | sA[4] | SYNTHESIZED_WIRE_6 | sA[5];

assign	SYNTHESIZED_WIRE_6 =  ~sA[6];


endmodule
