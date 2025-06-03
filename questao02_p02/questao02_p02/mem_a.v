module mem_a
#(parameter DATA_WIDTH=5, parameter ADDR_WIDTH=4)
(
	inout [(DATA_WIDTH-1):0] ad,
	input [(ADDR_WIDTH-1):0] aa,
	input arnw, ance
);

	reg [(DATA_WIDTH-1):0] ram[2**ADDR_WIDTH-1:0];

	always @(*)
	begin
		if (!ance && !arnw)
			  ram[aa] <= ad;
	end
	

   assign ad = (!ance && arnw) ? ram[aa] : {(DATA_WIDTH){1'bZ}};

endmodule
