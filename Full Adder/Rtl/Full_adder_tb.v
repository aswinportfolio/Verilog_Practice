module full_adder_tb();
	reg a_in,b_in,c_in;
	wire sum_out,carry_out;
	integer i;
	full_adder dut(.a(a_in),.b(b_in),.cin(c_in),.sum(sum_out),.carry(carry_out));
	initial
	  begin
	    for(i=0;i<8;i=i+1)
	      begin
	        {a_in,b_in,c_in}=i;
	        #10;
	      end
	      $finish;
          end
endmodule 