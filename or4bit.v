module or4bit(A, B, Output);		// or 4 bit module
	
input [3:0] A, B;						// A or B => Output
output [3:0] Output;					// A ve B 4 er bit

or o1(Output[0], A[0], B[0]);		// Her bit orlanir.
or o2(Output[1], A[1], B[1]);
or o3(Output[2], A[2], B[2]);
or o4(Output[3], A[3], B[3]);

endmodule