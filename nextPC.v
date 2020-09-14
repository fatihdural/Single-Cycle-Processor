module nextPC(pc, instruction,clk);
input clk;
input [31:0] instruction;

output reg [31:0] pc;
reg [31:0] pcdef = 32'h00000000;
	always @(*) begin
		if (instruction[31:26] == 6'b000010)
		begin
			pc = {6'b000000, instruction[25:0]};
			end
		else if (instruction[31:26] == 6'b000100 )
		begin
			pc = pcdef + 1 + instruction[15:0];
			end
		else
		begin
			pc = pcdef;
			end
	end
	always @(posedge clk) begin
		if (instruction[31:26] == 6'b000010)
		begin
			pcdef = {6'b000000, instruction[25:0]};
			end
		else if (instruction[31:26] == 6'b000100 )
		begin
			pcdef = pcdef + 1 + instruction[15:0];
			end
		else
		begin
			pcdef = pcdef + 1;
			end
		
		if( pc > 17 )
		begin
			$finish;
		end
			
	end

endmodule