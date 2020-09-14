module and4bit(A, B, Output);	// and 4 bit module

input [3:0] A, B;				// A ve B 4 bitlik inputlar.
output [3:0] Output;

and a1(Output[0], A[0], B[0]);	// her bit and lenir.
and a2(Output[1], A[1], B[1]);
and a3(Output[2], A[2], B[2]);
and a4(Output[3], A[3], B[3]);


endmodule