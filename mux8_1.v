module mux8_1(a0,a1,a2,a3,a4,a5,a6,a7,sel0,sel1,sel2,out); // mux 8 x 1 module
	input a0,a1,a2,a3,a4,a5,a6,a7;				// 8 input
	input sel0, sel1, sel2;							// secme girisler
	output out;										// olusan 1 bitlik output
	wire mux1, mux2;

	mux4_1 m1(mux1, a0,a1,a2,a3, sel0, sel1);		// 4 e 1 lik muxlar ile yapilir.
	mux4_1 m2(mux2, a4,a5,a6,a7, sel0, sel1);
	mux2_1 m3(mux1, mux2, sel2, out);
	
endmodule