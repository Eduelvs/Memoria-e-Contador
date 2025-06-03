module mem_b
#(parameter DATA_WIDTH=5, parameter ADDR_WIDTH=5)
(
	inout [(DATA_WIDTH-1):0] bd,
	input [(ADDR_WIDTH-1):0] ba,
	input brnw, bce
);

	reg [(DATA_WIDTH-1):0] ram[2**ADDR_WIDTH-1:0];

	always @(*)
	begin
		if (bce && !brnw)
			ram[ba] <= bd;
	end
	
	assign bd = (bce && brnw) ? ram[ba] : {(DATA_WIDTH){1'bZ}};
	
endmodule
