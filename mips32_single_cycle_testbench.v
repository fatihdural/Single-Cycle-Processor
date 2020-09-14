module mips32_single_cycle_testbench ();
wire[31:0] result;
reg clk,clk2;
wire [31:0] pc;

mips32_single_cycle final(result,clk, pc);

initial
begin
	clk = 1'b0;
	clk2 = 1'b0;
end

always #5 clk=~clk;
always #10 clk2=~clk2;

always @(posedge clk2)
begin
	$monitor("instruction : %32b, result : %32b", final.instruction,result);
end

endmodule









