`timescale 1 ps / 100 fs

/*
A 2x1 mux with a special twist. Each port is 32 bits wide!

Author: Max Golub
*/

module Mux_32_2x1(out, in, select);

	parameter width = 32;
	
	output [width-1:0] out;
	input [1:0][width-1:0] in;
	input select;


	genvar i;

	generate
		for (i=0; i < width; i++) begin: muxgen
			Mux2x1 mux21(.out(out[i]), .in({in[1][i], in[0][i]}), .select(select));
		end
	endgenerate

endmodule
