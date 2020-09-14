module mips32_single_cycle(result, clk, pc); // mips32 module
wire [31:0] instruction;
input clk;
wire clkk;
output [31:0] result;
wire [31:0] read_data_1, read_data_2;
wire [31:0] read_data_11, read_data_22;
wire [31:0] write_data, read_data;
wire [4:0] read_reg_1, read_reg_2, write_reg;
wire signal_reg_write, clk, result_t0;
wire [31:0] in1, in2;
wire [31:0] shamt;
wire [2:0] select_bits_ALU;
wire [31:0] result_t, result_sltu;
wire [5:0]function_code;
wire [31:0] signext;
wire [31:0] zeroext;
output wire [31:0] pc;

buf slt1(result_sltu[1], 1'b0);// result for sltu
buf slt2(result_sltu[2], 1'b0);
buf slt3(result_sltu[3], 1'b0);
buf slt4(result_sltu[4], 1'b0);
buf slt5(result_sltu[5], 1'b0); 
buf slt6(result_sltu[6], 1'b0);
buf slt7(result_sltu[7], 1'b0);
buf slt8(result_sltu[8], 1'b0);
buf slt9(result_sltu[9], 1'b0);
buf slt10(result_sltu[10], 1'b0);
buf slt11(result_sltu[11], 1'b0);
buf slt12(result_sltu[12], 1'b0);
buf slt13(result_sltu[13], 1'b0);
buf slt14(result_sltu[14], 1'b0);
buf slt15(result_sltu[15], 1'b0);
buf slt16(result_sltu[16], 1'b0);
buf slt17(result_sltu[17], 1'b0);
buf slt18(result_sltu[18], 1'b0);
buf slt19(result_sltu[19], 1'b0);
buf slt20(result_sltu[20], 1'b0);
buf slt21(result_sltu[21], 1'b0);
buf slt22(result_sltu[22], 1'b0);
buf slt23(result_sltu[23], 1'b0);
buf slt24(result_sltu[24], 1'b0);
buf slt25(result_sltu[25], 1'b0);
buf slt26(result_sltu[26], 1'b0);
buf slt27(result_sltu[27], 1'b0);
buf slt28(result_sltu[28], 1'b0);
buf slt29(result_sltu[29], 1'b0);
buf slt30(result_sltu[30], 1'b0);
buf slt31(result_sltu[31], 1'b0);

or4bit o1(4'b0000, instruction[9:6], shamt[3:0]); // for shamt
or o2(shamt[4], 1'b0, instruction[10]);
buf bs1(shamt[5], 1'b0);
buf bs2(shamt[6], 1'b0);
buf bs3(shamt[7], 1'b0);
buf bs4(shamt[8], 1'b0);
buf bs5(shamt[9], 1'b0);
buf bs6(shamt[10], 1'b0);
buf bs7(shamt[11], 1'b0);
buf bs8(shamt[12], 1'b0);
buf bs9(shamt[13], 1'b0);
buf bs10(shamt[14], 1'b0);
buf bs11(shamt[15], 1'b0);
buf bs12(shamt[16], 1'b0);
buf bs13(shamt[17], 1'b0);
buf bs14(shamt[18], 1'b0);
buf bs15(shamt[19], 1'b0);
buf bs16(shamt[20], 1'b0);
buf bs17(shamt[21], 1'b0);
buf bs18(shamt[22], 1'b0);
buf bs19(shamt[23], 1'b0);
buf bs20(shamt[24], 1'b0);
buf bs21(shamt[25], 1'b0);
buf bs22(shamt[26], 1'b0);
buf bs23(shamt[27], 1'b0);
buf bs24(shamt[28], 1'b0);
buf bs25(shamt[29], 1'b0);
buf bs26(shamt[30], 1'b0);
buf bs27(shamt[31], 1'b0);

wire temp, type, write_sign;
wire [31:0] extend;
wire [31:0] in3;
wire [31:0] result_i;
wire [31:0] result_r;
or ot1(temp, instruction[27], instruction[26]);
or ot2(type, instruction[28], temp);

mux2_1 mt1(instruction[0], instruction[26], type, function_code[0]);	// function_code
mux2_1 mt2(instruction[1], instruction[27], type, function_code[1]);
mux2_1 mt3(instruction[2], instruction[28], type, function_code[2]);
mux2_1 mt4(instruction[3], instruction[29], type, function_code[3]);
mux2_1 mt5(instruction[4], instruction[30], type, function_code[4]);
mux2_1 mt6(instruction[5], instruction[31], type, function_code[5]);

mips_registers mi1( read_data_1, read_data_2, write_data, instruction[25:21], instruction[20:16], instruction[15:11], 1'b0, clkk ); // read
mux32bit_2_1 mx1(read_data_2, read_data_1, instruction[5], in1); // rs-rt, rt-shamt secilir.
mux32bit_2_1 mx2(shamt, read_data_2, instruction[5], in2);
control_unit c(select_bits_ALU, function_code, type); 				// select bit secilir.
ALU alu1(in1, in2, select_bits_ALU, result_t);  			// ALU ya verilip sonuc alinir.
or o3(result_sltu[0], result_t[31], 1'b0);  
mux32bit_2_1 mx3(result_t, result_sltu, instruction[3], result_r); // eger sltu ise o secilir.

extimm e(instruction, extend); // signext - zeroext secimi.

mux32bit_2_1 mx4(extend, read_data_2, select_bits_ALU[2], in3); // rs - ext, rs - rt secimi.

ALU alu2(read_data_1, in3, select_bits_ALU, result_i); 

mux32bit_2_1 final(result_r, result_i, type, result);

mux2_1 mx5(instruction[11], instruction[16], type, write_reg[0]);
mux2_1 mx6(instruction[12], instruction[17], type, write_reg[1]);
mux2_1 mx7(instruction[13], instruction[18], type, write_reg[2]);
mux2_1 mx8(instruction[14], instruction[19], type, write_reg[3]);
mux2_1 mx9(instruction[15], instruction[20], type, write_reg[4]);

mips_registers mi2(read_data_11, read_data_22, result, instruction[25:21], instruction[20:16], write_reg, 1'b1, clkk ); // write

nextPC n1(pc, instruction, clk);
mips_instructions mp2(pc, instruction,clk);
mips_memory mm2(memory, clk, extend, read_data_2, read_data);

endmodule


