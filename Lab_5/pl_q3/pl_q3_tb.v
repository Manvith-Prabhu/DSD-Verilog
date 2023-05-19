`timescale 1ns/1ns
`include "pl_q3.v"
module pl_q3_tb();
reg [15:0] P;
reg k;
wire [15:0] Q;
convertor  c1(P,Q,k);
initial begin
    $dumpfile("pl_q3_tb.vcd");
    $dumpvars();
end
initial begin
k=0;
P=16'b1111111111111111;
#10;

k=0;
P=128;
#10;

k=0;
P=9;
#10;

k=0;
P=3;
#10;

k=0;
P=16'b1010101010101010;
#10;

k=1;
P=16'b1111111111111111;
#10;

k=1;
P=128;
#10;

k=1;
P=9;
#10;

k=1;
P=3;
#10;

k=1;
P=16'b1010101010101010;
#10;
end
endmodule