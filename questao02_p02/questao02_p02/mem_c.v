module mem_c
#(parameter DATA_WIDTH=5, parameter ADDR_WIDTH=5)
(
	inout [(DATA_WIDTH-1):0] cd,
	input [(ADDR_WIDTH-1):0] ca,
	input cnr, cnw
);

	reg [(DATA_WIDTH-1):0] ram[2**ADDR_WIDTH-1:0];

	always @(*)
	begin
	   if (cnr && !cnw)
		  ram[ca] <= cd;
	end
	
	assign cd = (!cnr && cnw) ? ram[ca] : {(DATA_WIDTH){1'bZ}};

endmodule
