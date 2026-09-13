module mux4_1_tb();
	reg [3:0]i;
	reg [2:0]s;
	wire y;
	mux4_1 dut(.i(i),.s(s),.y(y));
	task stimulus(input[3:0]x,input[2:0]y);
	begin
	  i=x;
	  s=y;
	  #10;
	end
	endtask
	initial
	  begin
	    stimulus(4'b1010,3'b101);
	    stimulus(4'b0101,3'b010);
	    stimulus(4'b1100,3'b011);
	    stimulus(4'b0011,3'b100);
	  end
endmodule

