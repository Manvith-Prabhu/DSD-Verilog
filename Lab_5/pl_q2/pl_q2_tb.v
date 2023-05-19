`timescale 1ns/1ns
`include "pl_q2.v"
module pl_q2_tb();
reg [3:0] B;
wire a;
wire b;
wire c;
wire d;
wire e;
wire f;
wire g;
integer i;
seg7display s1(B[3],B[2],B[1],B[0],a,b,c,d,e,f,g);
initial begin
    $dumpfile("pl_q2_tb.vcd");
    $dumpvars();
end
initial begin
    for(i=0;i<10;i=i+1)
    begin
     B=i;
     #10;
    end
end

endmodule