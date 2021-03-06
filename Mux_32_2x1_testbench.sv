// Test bench for Mux_32_2x1
`timescale 1 ps / 100 fs

module Mux_32_2x1_testbench();

	parameter ClockDelay = 1000;
	
	reg [1:0][31:0] in;
	reg select;

	wire [31:0] out;

	Mux_32_2x1 mux32(.out(out), .in(in), .select(select));

	initial begin
		in[0] = 32'hAAAAAAAA;
		in[1] = 32'hABCDABCD;
		select = 0;
		#ClockDelay;
		select = 1;
		#ClockDelay;
	end
endmodule