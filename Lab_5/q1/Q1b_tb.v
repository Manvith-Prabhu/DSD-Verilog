`timescale 1ns/1ns
`include "Q1b.v"

module Q1b();

reg E;
reg [1:0] A;
wire [0:3] Y;
integer i; 

decoder24 d1(E,A,Y);

initial 
begin 
    $dumpfile("Q1b_tb.vcd");
    $dumpvars();
end

initial
begin
  E=1;
  for(i=0;i<4;i=i+1)
   begin 
    A=i;
    #10;
   end

  E=0;
  for(i=0;i<4;i=i+1)
   begin 
    A=i;
    #10;
   end
end

initial
    begin
            $display("Test Complete!");
        end

endmodule