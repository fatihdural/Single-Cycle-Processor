module extimm(instruction, extend);

input [31:0] instruction;
output [31:0] extend;
wire flag;
wire [31:0] sign1, sign2;
and a1 (flag, instruction[28], instruction[29]); // if flag = 1 -> zeroext, if flag = 0 -> signext

buf b1(sign1[0], instruction[0]);
buf b2(sign1[1], instruction[1]);
buf b3(sign1[2], instruction[2]);
buf b4(sign1[3], instruction[3]);
buf b5(sign1[4], instruction[4]);
buf b6(sign1[5], instruction[5]);
buf b7(sign1[6], instruction[6]);
buf b8(sign1[7], instruction[7]);
buf b9(sign1[8], instruction[8]);
buf b10(sign1[9], instruction[9]);
buf b11(sign1[10], instruction[10]);
buf b12(sign1[11], instruction[11]);
buf b13(sign1[12], instruction[12]);
buf b14(sign1[13], instruction[13]);
buf b15(sign1[14], instruction[14]);
buf b16(sign1[15], instruction[15]);
buf b17(sign1[16], instruction[15]);
buf b18(sign1[17], instruction[15]);
buf b19(sign1[18], instruction[15]);
buf b20(sign1[19], instruction[15]);
buf b21(sign1[20], instruction[15]);
buf b22(sign1[21], instruction[15]);
buf b23(sign1[22], instruction[15]);
buf b24(sign1[23], instruction[15]);
buf b25(sign1[24], instruction[15]);
buf b26(sign1[25], instruction[15]);
buf b27(sign1[26], instruction[15]);
buf b28(sign1[27], instruction[15]);
buf b29(sign1[28], instruction[15]);
buf b30(sign1[29], instruction[15]);
buf b31(sign1[30], instruction[15]);
buf b32(sign1[31], instruction[15]);

buf bf1(sign2[0], instruction[0]);
buf bf2(sign2[1], instruction[1]);
buf bf3(sign2[2], instruction[2]);
buf bf4(sign2[3], instruction[3]);
buf bf5(sign2[4], instruction[4]);
buf bf6(sign2[5], instruction[5]);
buf bf7(sign2[6], instruction[6]);
buf bf8(sign2[7], instruction[7]);
buf bf9(sign2[8], instruction[8]);
buf bf10(sign2[9], instruction[9]);
buf bf11(sign2[10], instruction[10]);
buf bf12(sign2[11], instruction[11]);
buf bf13(sign2[12], instruction[12]);
buf bf14(sign2[13], instruction[13]);
buf bf15(sign2[14], instruction[14]);
buf bf16(sign2[15], instruction[15]);
buf bf17(sign2[16], 1'b0);
buf bf18(sign2[17], 1'b0);
buf bf19(sign2[18], 1'b0);
buf bf20(sign2[19], 1'b0);
buf bf21(sign2[20], 1'b0);
buf bf22(sign2[21], 1'b0);
buf bf23(sign2[22], 1'b0);
buf bf24(sign2[23], 1'b0);
buf bf25(sign2[24], 1'b0);
buf bf26(sign2[25], 1'b0);
buf bf27(sign2[26], 1'b0);
buf bf28(sign2[27], 1'b0);
buf bf29(sign2[28], 1'b0);
buf bf30(sign2[29], 1'b0);
buf bf31(sign2[30], 1'b0);
buf bf32(sign2[31], 1'b0);

mux32bit_2_1 mx(sign1, sign2, flag, extend);

endmodule