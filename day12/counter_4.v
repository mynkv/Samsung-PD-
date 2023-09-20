module counter_4 (input clk, direc, rst, output [3:0] counter);

reg [3:0] count = 0 ;

assign counter = count;

always @ (rst, direc, clk)
	
begin
	if (rst)
		begin
		count = 4'b0;
		end
	else if (direc == 1)
		begin
		count = count + 1;
		if (count == 4'b1111)
		count = 0;
		end
	else if (direc == 0)
		begin
		count = count - 1;
		if (count == 0)
		count = 4'b1111;
		end
end

endmodule
		
 

