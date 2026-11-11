module alu_tb();
  reg [3:0]a,b;
  reg [1:0]cmd;
  reg oe;
  wire[7:0]dout;

alu dut(a,b,cmd,oe,dout);
initial
 begin
  a=4'b00;
  b=4'b00;
  cmd=3'b000;
  oe=1'b0;
  #10;
  a=4'b0101;b=4'b1010;cmd=2'b00;
  #10;
  oe=1'b1;
  #10;
  a=4'b0101;b=4'b1010;cmd=2'b00;
  #10;
  a=4'b0101;b=4'b1010;cmd=2'b01;
  #10;
  a=4'b0101;b=4'b1010;cmd=2'b00;
  #10;
  a=4'b0101;b=4'b1010;cmd=2'b10;
  #10;
  a=4'b0101;b=4'b1010;cmd=2'b11;
  #40;
  $finish();
 end
endmodule