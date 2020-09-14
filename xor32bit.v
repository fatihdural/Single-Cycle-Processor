module xor32bit(A,B,Output); // xor module

input [31:0] A, B; 			// A xor B => Output
output [31:0] Output;

xor xo0 (Output[0], A[0], B[0]);
xor xo1 (Output[1], A[1], B[1]);
xor xo2 (Output[2], A[2], B[2]);
xor xo3 (Output[3], A[3], B[3]);
xor xo4 (Output[4], A[4], B[4]);
xor xo5 (Output[5], A[5], B[5]);
xor xo6 (Output[6], A[6], B[6]);
xor xo7 (Output[7], A[7], B[7]);

xor xo8 (Output[8], A[8], B[8]);
xor xo9 (Output[9], A[9], B[9]);
xor xo10 (Output[10], A[10], B[10]);
xor xo11 (Output[11], A[11], B[11]);
xor xo12 (Output[12], A[12], B[12]);
xor xo13 (Output[13], A[13], B[13]);
xor xo14 (Output[14], A[14], B[14]);
xor xo15 (Output[15], A[15], B[15]);

xor xo16 (Output[16], A[16], B[16]);
xor xo17 (Output[17], A[17], B[17]);
xor xo18 (Output[18], A[18], B[18]);
xor xo19 (Output[19], A[19], B[19]);
xor xo20 (Output[20], A[20], B[20]);
xor xo21 (Output[21], A[21], B[21]);
xor xo22 (Output[22], A[22], B[22]);
xor xo23 (Output[23], A[23], B[23]);

xor xo24 (Output[24], A[24], B[24]);
xor xo25 (Output[25], A[25], B[25]);
xor xo26 (Output[26], A[26], B[26]);
xor xo27 (Output[27], A[27], B[27]);
xor xo28 (Output[28], A[28], B[28]);
xor xo29 (Output[29], A[29], B[29]);
xor xo30 (Output[30], A[30], B[30]);
xor xo31 (Output[31], A[31], B[31]);

endmodule