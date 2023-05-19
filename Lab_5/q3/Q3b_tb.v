`timescale 1ns/1ns
`include "Q3b.v"

module Q3b();
 reg [2:0] S;
 reg [3:0] i7;
 reg [3:0] i6;
 reg [3:0] i5;
 reg [3:0] i4;
 reg [3:0] i3;
 reg [3:0] i2;
 reg [3:0] i1;
 reg [3:0] i0;
 wire [3:0] Y;
 integer j;
mux81b m1 (S,i7,i6,i5,i4,i3,i2,i1,i0,Y);

initial begin
    $dumpfile("Q3b_tb.vcd");
    $dumpvars();
end

initial begin
   i7=7;
   i6=6;
   i5=5;
   i4=4;
   i3=3;
   i2=2;
   i1=1;
   i0=0;
   for(j=0;j<8;j=j+1)
    begin 
        S=j;
        #10;
    end
end

initial begin 
    $display("Test complete!");
end

endmodule