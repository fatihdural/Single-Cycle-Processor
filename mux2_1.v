module mux2_1(A, B, X, S);		// mux 2 x 1 module
	
	input A,B,X;			// A ve B inputlar, X secme girisi, S output.
	output S;
	wire x_n;
	wire w1, w2;			// muxun ic yapısı gateler ile olusturulur.
	not n(x_n, X);
	and a1(w1, A, x_n);
	and a2(w2, X, B);
	or o1(S, w1, w2);

endmodule