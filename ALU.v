module ALU(A, B, sel, out);	// ALU module
	input [31:0] A, B;		// 32 bitlik 2 input, 3 bit select ve out isimli cikti degiskeni.
	input [2:0] sel;
	output [31:0] out;
	wire [31:0] and0, or1, add2, xor3, subt4, sright5, sleft6, nor7;
	wire Cout, Bout;
	
	and32bit a(A, B, and0);		// once modulleri kullandik sonuclar elimizde.
	or32bit o(A, B, or1);
	adder32bit ad(A, B, 1'b0, add2, Cout);
	xor32bit xo(A, B, xor3);
	subt32bit sb(A, B, 1'b0, subt4, Bout);
	shift_right sr(A, B, sright5);
	shift_left sl(A, B, sleft6);
	nor32bit no(A, B, nor7);
										// 8 x 1 muxlara verdik.
	mux8_1 m0(and0[0], or1[0], add2[0], xor3[0], subt4[0], sright5[0], sleft6[0], nor7[0], sel[0], sel[1], sel[2], out[0]);
	mux8_1 m1(and0[1], or1[1], add2[1], xor3[1], subt4[1], sright5[1], sleft6[1], nor7[1], sel[0], sel[1], sel[2], out[1]);
	mux8_1 m2(and0[2], or1[2], add2[2], xor3[2], subt4[2], sright5[2], sleft6[2], nor7[2], sel[0], sel[1], sel[2], out[2]);
	mux8_1 m3(and0[3], or1[3], add2[3], xor3[3], subt4[3], sright5[3], sleft6[3], nor7[3], sel[0], sel[1], sel[2], out[3]);
	mux8_1 m4(and0[4], or1[4], add2[4], xor3[4], subt4[4], sright5[4], sleft6[4], nor7[4], sel[0], sel[1], sel[2], out[4]);
	mux8_1 m5(and0[5], or1[5], add2[5], xor3[5], subt4[5], sright5[5], sleft6[5], nor7[5], sel[0], sel[1], sel[2], out[5]);
	mux8_1 m6(and0[6], or1[6], add2[6], xor3[6], subt4[6], sright5[6], sleft6[6], nor7[6], sel[0], sel[1], sel[2], out[6]);
	mux8_1 m7(and0[7], or1[7], add2[7], xor3[7], subt4[7], sright5[7], sleft6[7], nor7[7], sel[0], sel[1], sel[2], out[7]);
	mux8_1 m8(and0[8], or1[8], add2[8], xor3[8], subt4[8], sright5[8], sleft6[8], nor7[8], sel[0], sel[1], sel[2], out[8]);
	mux8_1 m9(and0[9], or1[9], add2[9], xor3[9], subt4[9], sright5[9], sleft6[9], nor7[9], sel[0], sel[1], sel[2], out[9]);
	mux8_1 m10(and0[10], or1[10], add2[10], xor3[10], subt4[10], sright5[10], sleft6[10], nor7[10], sel[0], sel[1], sel[2], out[10]);
	mux8_1 m11(and0[11], or1[11], add2[11], xor3[11], subt4[11], sright5[11], sleft6[11], nor7[11], sel[0], sel[1], sel[2], out[11]);
	mux8_1 m12(and0[12], or1[12], add2[12], xor3[12], subt4[12], sright5[12], sleft6[12], nor7[12], sel[0], sel[1], sel[2], out[12]);
	mux8_1 m13(and0[13], or1[13], add2[13], xor3[13], subt4[13], sright5[13], sleft6[13], nor7[13], sel[0], sel[1], sel[2], out[13]);
	mux8_1 m14(and0[14], or1[14], add2[14], xor3[14], subt4[14], sright5[14], sleft6[14], nor7[14], sel[0], sel[1], sel[2], out[14]);
	mux8_1 m15(and0[15], or1[15], add2[15], xor3[15], subt4[15], sright5[15], sleft6[15], nor7[15], sel[0], sel[1], sel[2], out[15]);
	mux8_1 m16(and0[16], or1[16], add2[16], xor3[16], subt4[16], sright5[16], sleft6[16], nor7[16], sel[0], sel[1], sel[2], out[16]);
	mux8_1 m17(and0[17], or1[17], add2[17], xor3[17], subt4[17], sright5[17], sleft6[17], nor7[17], sel[0], sel[1], sel[2], out[17]);
	mux8_1 m18(and0[18], or1[18], add2[18], xor3[18], subt4[18], sright5[18], sleft6[18], nor7[18], sel[0], sel[1], sel[2], out[18]);
	mux8_1 m19(and0[19], or1[19], add2[19], xor3[19], subt4[19], sright5[19], sleft6[19], nor7[19], sel[0], sel[1], sel[2], out[19]);
	mux8_1 m20(and0[20], or1[20], add2[20], xor3[20], subt4[20], sright5[20], sleft6[20], nor7[20], sel[0], sel[1], sel[2], out[20]);
	mux8_1 m21(and0[21], or1[21], add2[21], xor3[21], subt4[21], sright5[21], sleft6[21], nor7[21], sel[0], sel[1], sel[2], out[21]);
	mux8_1 m22(and0[22], or1[22], add2[22], xor3[22], subt4[22], sright5[22], sleft6[22], nor7[22], sel[0], sel[1], sel[2], out[22]);
	mux8_1 m23(and0[23], or1[23], add2[23], xor3[23], subt4[23], sright5[23], sleft6[23], nor7[23], sel[0], sel[1], sel[2], out[23]);
	mux8_1 m24(and0[24], or1[24], add2[24], xor3[24], subt4[24], sright5[24], sleft6[24], nor7[24], sel[0], sel[1], sel[2], out[24]);
	mux8_1 m25(and0[25], or1[25], add2[25], xor3[25], subt4[25], sright5[25], sleft6[25], nor7[25], sel[0], sel[1], sel[2], out[25]);
	mux8_1 m26(and0[26], or1[26], add2[26], xor3[26], subt4[26], sright5[26], sleft6[26], nor7[26], sel[0], sel[1], sel[2], out[26]);
	mux8_1 m27(and0[27], or1[27], add2[27], xor3[27], subt4[27], sright5[27], sleft6[27], nor7[27], sel[0], sel[1], sel[2], out[27]);
	mux8_1 m28(and0[28], or1[28], add2[28], xor3[28], subt4[28], sright5[28], sleft6[28], nor7[28], sel[0], sel[1], sel[2], out[28]);
	mux8_1 m29(and0[29], or1[29], add2[29], xor3[29], subt4[29], sright5[29], sleft6[29], nor7[29], sel[0], sel[1], sel[2], out[29]);	
	mux8_1 m30(and0[30], or1[30], add2[30], xor3[30], subt4[30], sright5[30], sleft6[30], nor7[30], sel[0], sel[1], sel[2], out[30]);
	mux8_1 m31(and0[31], or1[31], add2[31], xor3[31], subt4[31], sright5[31], sleft6[31], nor7[31], sel[0], sel[1], sel[2], out[31]);
	
endmodule