module alu(
  input [3:0]a,b,
  input [1:0]cmd,
  input oe,
  output reg[7:0]dout);
always@(*)
  begin
    if(oe)
     begin
      case(cmd)
	2'b00:dout=a+b;
        2'b01:dout=a-b;
	2'b10:dout=a&b;
	2'b11:dout=a|b;
        default: dout = 8'h00;
      endcase
     end
    else
     dout=8'd00;
  end
endmodule