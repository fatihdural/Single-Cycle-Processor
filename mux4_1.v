module mux4_1(out,i0,i1,i2,i3,s1,s0);	// mux 4 x 1 module

input i0,i1,i2,i3,s1,s0;		// 4 input ve 2 secme girisi.
output out;
wire mux1,mux2;
mux2_1 mux_1(i0,i1,s1,mux1);	// 2 e 1 lik muxlar ile yapilir.
mux2_1 mux_2(i2,i3,s1,mux2);
mux2_1 mux_3(mux1,mux2,s0,out);

endmodule