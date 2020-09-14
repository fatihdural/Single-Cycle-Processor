module subt32bit(A, B, Bin, D, Bout);	// subtraction module
	input [31:0] A, B;						// A - B => D
	input Bin;
	output [31:0] D; 
	output Bout;
	wire [31:0] w;
	wire w_n;
	not n0(w[0], B[0]);				// -B
	not n1(w[1], B[1]);
	not n2(w[2], B[2]);
	not n3(w[3], B[3]);
	not n4(w[4], B[4]);
	not n5(w[5], B[5]);
	not n6(w[6], B[6]);
	not n7(w[7], B[7]);
	not n8(w[8], B[8]);
	not n9(w[9], B[9]);
	not n10(w[10], B[10]);
	not n11(w[11], B[11]);
	not n12(w[12], B[12]);
	not n13(w[13], B[13]);
	not n14(w[14], B[14]);
	not n15(w[15], B[15]);
	not n16(w[16], B[16]);
	not n17(w[17], B[17]);
	not n18(w[18], B[18]);
	not n19(w[19], B[19]);
	not n20(w[20], B[20]);
	not n21(w[21], B[21]);
	not n22(w[22], B[22]);
	not n23(w[23], B[23]);
	not n24(w[24], B[24]);
	not n25(w[25], B[25]);
	not n26(w[26], B[26]);
	not n27(w[27], B[27]);
	not n28(w[28], B[28]);
	not n29(w[29], B[29]);
	not n30(w[30], B[30]);
	not n31(w[31], B[31]);
	not n32(w_n, Bin);
	
	adder32bit as(A, w, w_n, D, Bout);	// A + (- B);
	
endmodule