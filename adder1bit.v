module adder1bit(A, B, Cin, S, Cout);	// full adder 1 bit module
	input A, B, Cin;
	output S, Cout;
	wire w1, w2, w3;
								
	xor xo1(w1, A, B);			// full adder ic yapisi gateler ile olusturulur.
	xor x02(S, w1, Cin);
	and a1(w2, w1, Cin);
	and a2(w3, A, B);
	or o1(Cout, w2, w3);

endmodule