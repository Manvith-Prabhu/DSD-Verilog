`timescale 1ns/1ns
`include "q3.v"

module dispenser_tb();
reg clk;
reg reset;
reg [1:0] in;
wire p;
wire c;

dispenser d(clk, reset, in, p, c);

always #5 clk = ~clk; 

initial begin
    $dumpfile("Dispenser.vcd");
    $dumpvars();
end
initial begin
clk = 0;
reset = 1;
in = 0;
#5 reset = 0;
end

initial begin
    in = 2;#10;
    in = 1;#10;
    in = 0;#10;
    in = 2;#10;
    in = 2;#10;
    in = 1;#10;
    in = 1;#10;
    in = 1;#10;
    in = 0;#10;
    in = 1;#10;
    in = 2;#10;
    in = 0;#10;
end

initial begin
    #150 $finish;
end

endmodule