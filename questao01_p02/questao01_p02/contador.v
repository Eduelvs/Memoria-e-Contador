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
// CREATED		"Wed Jun 28 08:46:10 2023"

module contador(
	clk,
	F,
	clr,
	qc,
	qb,
	qa
);


input wire	clk;
input wire	F;
input wire	clr;
output wire	qc;
output wire	qb;
output wire	qa;

reg	[1:3] A;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_14 = 1;



assign	SYNTHESIZED_WIRE_6 = A[1] & SYNTHESIZED_WIRE_0;


always@(posedge clk or negedge clr or negedge SYNTHESIZED_WIRE_16)
begin
if (!clr)
	begin
	A[1] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	A[1] <= 1;
	end
else
	A[1] <= A[1] ^ SYNTHESIZED_WIRE_2;
end

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_0 =  ~A[3];

assign	SYNTHESIZED_WIRE_3 =  ~A[1];

assign	SYNTHESIZED_WIRE_4 =  ~A[2];


always@(posedge clk or negedge clr or negedge SYNTHESIZED_WIRE_16)
begin
if (!clr)
	begin
	A[2] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_16)
	begin
	A[2] <= 1;
	end
else
	begin
	A[2] <= SYNTHESIZED_WIRE_7;
	end
end


assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_9 & A[2] & A[3];

assign	SYNTHESIZED_WIRE_11 = A[1] & SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_9 =  ~A[1];

assign	SYNTHESIZED_WIRE_10 =  ~A[2];


always@(posedge clk or negedge clr or negedge SYNTHESIZED_WIRE_16)
begin
if (!clr)
	begin
	A[3] <= 0;
	end
else
	begin
if (!SYNTHESIZED_WIRE_16)
	begin
	A[3] <= 1;
	end
else
	begin
	A[3] <= ~A[3] & SYNTHESIZED_WIRE_14 | A[3] & ~A[2];
	end
	end
end

assign	SYNTHESIZED_WIRE_15 = F & A[1] & A[2] & A[3];

assign	SYNTHESIZED_WIRE_16 =  ~SYNTHESIZED_WIRE_15;

assign	qc = A[1];
assign	qb = A[2];
assign	qa = A[3];

endmodule
