module mux2_1(i0,i1,s,y);
	input i1,i0,s;
	output y;
	assign y=s?i1:i0;
endmodule
