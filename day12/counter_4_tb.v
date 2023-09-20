module counter_4_tb ();
reg clk = 0, direc, rst;
wire [3:0] counter;

counter_4 DUT (clk, direc, rst, counter);

always #5 clk = ~clk;

initial
begin
	rst = 1;
#20	rst = 0 ;direc = 1;
#200	direc = 0;

end

initial 
begin
	$dumpfile("counter_4_tb.vcd");
	$dumpvars;
	#400 $finish;
end

endmodule





