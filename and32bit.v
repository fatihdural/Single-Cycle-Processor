module and32bit(A,B,Output);		// and 32 bit module
	
input [31:0] A, B;			
output [31:0] Output;

and4bit a1 (A[3:0], B[3:0], Output[3:0]);	// 32 bitlik inputlar 4 er parcalar halinde and4bit modulu yardimiyla and lenir.
and4bit a2 (A[7:4], B[7:4], Output[7:4]);
and4bit a3 (A[11:8], B[11:8], Output[11:8]);
and4bit a4 (A[15:12], B[15:12], Output[15:12]);
and4bit a5 (A[19:16], B[19:16], Output[19:16]);
and4bit a6 (A[23:20], B[23:20], Output[23:20]);
and4bit a7 (A[27:24], B[27:24], Output[27:24]);
and4bit a8 (A[31:28], B[31:28], Output[31:28]);

endmodule