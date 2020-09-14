module mips_memory(memory, clk, extend, write_data, read_data);
input [31:0] extend;
output reg [31:0] read_data;
input [31:0] write_data;
input clk;
output reg [31:0] memory;
reg [256:0] memories [31:0];

initial
begin 
$readmemb("memory.mem", memories);
end

always @(posedge clk) begin
	if( memory[31:26] == 6'b100011 )
		begin
		read_data = memories[memory[25:21] + extend];
		end
	else if( memory[31:26] == 6'b101011 )	
	begin	
		memories[memory[25:21] + extend] = write_data;
		$writememb("memory.mem", memories);
	end	
end

endmodule