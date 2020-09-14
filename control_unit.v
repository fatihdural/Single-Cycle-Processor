module control_unit(select_bits_ALU, function_code, temp2); // control unit module

input [5:0] function_code;				// 6 bit function-code, 3 bit selection bits.
input temp2;
output [2:0] select_bits_ALU;
wire t0, t1, t2, t3, t4, t5, t6, t7;
wire at1, at2, at3;
wire [2:0] r1, r2;

or o1(t0 ,function_code[5], function_code[0]); // s2 = f1 + (f5 + f0)'
not n1(t6, t0);
or o3(r1[2], function_code[1], t6);

not n2(t1, function_code[1]);						// s1 = f1' xor f2
xor xo1(r1[1], t1, function_code[2]);

not n3(t2, function_code[5]);					// s0 = (f2 . f0) or f5'. f1'. f0
not n4(t3, function_code[0]);
and a2(t4, t2, t3, function_code[1]);
and a1(t5, function_code[2], function_code[0]);
or o2(r1[0], t5, t4);


and ant1(r2[0], function_code[2], function_code[0]);
not nt1(r2[1], function_code[2]);

or ot1(at1, function_code[4], function_code[3]);

or ot2(at2, at1, function_code[5]);

not not3(r2[2] ,at2);

mux2_1 mx1(r1[0], r2[0], temp2, select_bits_ALU[0]);
mux2_1 mx2(r1[1], r2[1], temp2, select_bits_ALU[1]);
mux2_1 mx3(r1[2], r2[2], temp2, select_bits_ALU[2]);

endmodule