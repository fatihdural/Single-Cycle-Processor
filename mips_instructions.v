module mips_instructions(pc, instruction, clk);
input [31:0] pc;
input clk;
output reg [31:0] instruction;
reg [31:0] instructions [31:0];

initial
begin 
$readmemb("instructions.mem", instructions);
end

always @(posedge clk) begin
	instruction = instructions[pc[7:0]];
end

endmodule