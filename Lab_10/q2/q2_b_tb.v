`timescale 1ns/1ns
`include "q2_b.v"

module seq_detector_tb();
reg clk;
reg reset;
reg in;
wire match;

seq_detector dut(clk, reset, in, match);

always #5 clk = ~clk; 

initial begin
    $dumpfile("Moore.vcd");
    $dumpvars();
end
initial begin
clk = 0;
reset = 1;
in = 0;
#5 reset = 0;
end

initial begin
    in = 1;#10;
    in = 0;#10;
    in = 1;#10;
    in = 0;#10;
    in = 0;#10;
    in = 1;#10;
    in = 0;#10;
    in = 1;#10;
    in = 1;#10;
    in = 0;#10;
    in = 0;#10;
    in = 1;#10;
    in = 0;#10;
    in = 0;#10;
    in = 1;#10;
    in = 1;#10;
    in = 0;#10;
    in = 1;#10;
end

initial begin
    #200 $finish;
end

endmodule