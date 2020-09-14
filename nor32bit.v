module nor32bit(A,B,Output);		// nor 32 bit module

input [31:0] A, B;
output [31:0] Output;					// A nor B => Output

nor no0 (Output[0], A[0], B[0]);		// her bit teker teker norlanir.
nor no1 (Output[1], A[1], B[1]);
nor no2 (Output[2], A[2], B[2]);
nor no3 (Output[3], A[3], B[3]);
nor no4 (Output[4], A[4], B[4]);
nor no5 (Output[5], A[5], B[5]);
nor no6 (Output[6], A[6], B[6]);
nor no7 (Output[7], A[7], B[7]);

nor no8 (Output[8], A[8], B[8]);
nor no9 (Output[9], A[9], B[9]);
nor no10 (Output[10], A[10], B[10]);
nor no11 (Output[11], A[11], B[11]);
nor no12 (Output[12], A[12], B[12]);
nor no13 (Output[13], A[13], B[13]);
nor no14 (Output[14], A[14], B[14]);
nor no15 (Output[15], A[15], B[15]);

nor no16 (Output[16], A[16], B[16]);
nor no17 (Output[17], A[17], B[17]);
nor no18 (Output[18], A[18], B[18]);
nor no19 (Output[19], A[19], B[19]);
nor no20 (Output[20], A[20], B[20]);
nor no21 (Output[21], A[21], B[21]);
nor no22 (Output[22], A[22], B[22]);
nor no23 (Output[23], A[23], B[23]);

nor no24 (Output[24], A[24], B[24]);
nor no25 (Output[25], A[25], B[25]);
nor no26 (Output[26], A[26], B[26]);
nor no27 (Output[27], A[27], B[27]);
nor no28 (Output[28], A[28], B[28]);
nor no29 (Output[29], A[29], B[29]);
nor no30 (Output[30], A[30], B[30]);
nor no31 (Output[31], A[31], B[31]);

endmodule