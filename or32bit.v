module or32bit(A,B,Output);		// or 32 bit module

input [31:0] A, B;
output [31:0] Output;

or4bit o1 (A[3:0], B[3:0], Output[3:0]);		// bitler 4 er li gruplar halinde or4bit modulu yardimiyla orlanir.
or4bit o2 (A[7:4], B[7:4], Output[7:4]);
or4bit o3 (A[11:8], B[11:8], Output[11:8]);
or4bit o4 (A[15:12], B[15:12], Output[15:12]);
or4bit o5 (A[19:16], B[19:16], Output[19:16]);
or4bit o6 (A[23:20], B[23:20], Output[23:20]);
or4bit o7 (A[27:24], B[27:24], Output[27:24]);
or4bit o8 (A[31:28], B[31:28], Output[31:28]);

endmodule