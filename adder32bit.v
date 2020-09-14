module adder32bit(A, B, Cin, S, Cout);		// full adder 32 bit module
	input [31:0] A, B;
	input Cin;
	output [31:0] S;
	output Cout;
	wire [31:0] w;
	
	adder1bit ad0( A[0], B[0],	Cin, S[0], w[0] ); // her bit toplanir, elde ciktisi diger bite verilerecek devam edilir.
	adder1bit ad1( A[1], B[1],	w[0], S[1], w[1] );
	adder1bit ad2( A[2], B[2],	w[1], S[2], w[2] );
	adder1bit ad3( A[3], B[3],	w[2], S[3], w[3] );
	adder1bit ad4( A[4], B[4],	w[3], S[4], w[4] );
	adder1bit ad5( A[5], B[5],	w[4], S[5], w[5] );
	adder1bit ad6( A[6], B[6],	w[5], S[6], w[6] );
	adder1bit ad7( A[7], B[7],	w[6], S[7], w[7] );
	adder1bit ad8( A[8], B[8],	w[7], S[8], w[8] );	
	adder1bit ad9( A[9], B[9],	w[8], S[9], w[9] );
	adder1bit ad10( A[10], B[10],	w[9], S[10], w[10] );
	adder1bit ad11( A[11], B[11],	w[10], S[11], w[11] );
	adder1bit ad12( A[12], B[12],	w[11], S[12], w[12] );
	adder1bit ad13( A[13], B[13],	w[12], S[13], w[13] );
	adder1bit ad14( A[14], B[14],	w[13], S[14], w[14] );
	adder1bit ad15( A[15], B[15],	w[14], S[15], w[15] );
	adder1bit ad16( A[16], B[16],	w[15], S[16], w[16] );	
	adder1bit ad17( A[17], B[17],	w[16], S[17], w[17] );
	adder1bit ad18( A[18], B[18],	w[17], S[18], w[18] );
	adder1bit ad19( A[19], B[19],	w[18], S[19], w[19] );
	adder1bit ad20( A[20], B[20],	w[19], S[20], w[20] );	
	adder1bit ad21( A[21], B[21],	w[20], S[21], w[21] );
	adder1bit ad22( A[22], B[22],	w[21], S[22], w[22] );
	adder1bit ad23( A[23], B[23],	w[22], S[23], w[23] );
	adder1bit ad24( A[24], B[24],	w[23], S[24], w[24] );	
	adder1bit ad25( A[25], B[25],	w[24], S[25], w[25] );
	adder1bit ad26( A[26], B[26],	w[25], S[26], w[26] );
	adder1bit ad27( A[27], B[27],	w[26], S[27], w[27] );
	adder1bit ad28( A[28], B[28],	w[27], S[28], w[28] );	
	adder1bit ad29( A[29], B[29],	w[28], S[29], w[29] );
	adder1bit ad30( A[30], B[30],	w[29], S[30], w[30] );	
	adder1bit ad31( A[31], B[31],	w[30], S[31], Cout );
	
endmodule