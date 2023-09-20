module mux_generate ( input [3:0] in, input [1:0] sel, output y);
	assign y = in[sel];
endmodule

