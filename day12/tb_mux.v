`timescale 1ns/1ps
module tb_mux;

	reg [3:0] in;

	reg [1:0] sel;

	wire y;

	mux_generate uut (.in(in),.sel(sel),.y(y));

initial 

begin

	
in=4'b1010;
sel = 2'b00;
#2 sel=2'b00;
#2 sel=2'b01;
#2 sel=2'b10;
#2 sel=2'b11;
#2 sel=2'b00;
#100 $stop;
end

initial 
begin
	$dumpfile("tb_mux.vcd");
	$dumpvars(0,tb_mux);


end

endmodule
