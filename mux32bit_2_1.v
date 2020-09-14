module mux32bit_2_1(A, B, X, S); // mux 32 bit 2x1 module
	input [31:0] A, B;
	input X;
	output [31:0] S;

	mux2_1 m1(A[0], B[0], X, S[0]); // 2 x 1 mux 32 bitlik icin uygulanir.
	mux2_1 m2(A[1], B[1], X, S[1]);
	mux2_1 m3(A[2], B[2], X, S[2]);
	mux2_1 m4(A[3], B[3], X, S[3]);
	mux2_1 m5(A[4], B[4], X, S[4]);
	mux2_1 m6(A[5], B[5], X, S[5]);
	mux2_1 m7(A[6], B[6], X, S[6]);
	mux2_1 m8(A[7], B[7], X, S[7]);
	mux2_1 m9(A[8], B[8], X, S[8]);
	mux2_1 m10(A[9], B[9], X, S[9]);
	mux2_1 m11(A[10], B[10], X, S[10]);
	mux2_1 m12(A[11], B[11], X, S[11]);
	mux2_1 m13(A[12], B[12], X, S[12]);
	mux2_1 m14(A[13], B[13], X, S[13]);
	mux2_1 m15(A[14], B[14], X, S[14]);
	mux2_1 m16(A[15], B[15], X, S[15]);
	mux2_1 m17(A[16], B[16], X, S[16]);
	mux2_1 m18(A[17], B[17], X, S[17]);
	mux2_1 m19(A[18], B[18], X, S[18]);
	mux2_1 m20(A[19], B[19], X, S[19]);
	mux2_1 m21(A[20], B[20], X, S[20]);
	mux2_1 m22(A[21], B[21], X, S[21]);
	mux2_1 m23(A[22], B[22], X, S[22]);
	mux2_1 m24(A[23], B[23], X, S[23]);
	mux2_1 m25(A[24], B[24], X, S[24]);
	mux2_1 m26(A[25], B[25], X, S[25]);
	mux2_1 m27(A[26], B[26], X, S[26]);
	mux2_1 m28(A[27], B[27], X, S[27]);
	mux2_1 m29(A[28], B[28], X, S[28]);
	mux2_1 m30(A[29], B[29], X, S[29]);	
	mux2_1 m31(A[30], B[30], X, S[30]);
	mux2_1 m32(A[31], B[31], X, S[31]);	
	
endmodule