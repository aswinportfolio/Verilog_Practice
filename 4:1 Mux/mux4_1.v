module mux4_1(i,s,y);
	input [3:0]i;
	input [2:0]s;
	output y;
	wire w1,w2;
	mux2_1 m1(i[0],i[1],s[0],w1);
	mux2_1 m2(i[2],i[3],s[1],w2);
	mux2_1 m3(w1,w2,s[2],y);
endmodule
