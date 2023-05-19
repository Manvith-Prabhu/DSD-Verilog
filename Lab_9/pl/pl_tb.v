`timescale 1ns/1ns
`include "pl.v"

module accumulator_tb;

    reg [3:0]i;
    wire [3:0]acc;
    reg clk,clr;
    wire overflow_flag;

accumulator dut(i,acc,clk,clr,overflow_flag);

initial begin
    $dumpfile("pl_tb.vcd");;
    $dumpvars();
end

initial begin
    clk=0;
    forever #5 clk=~clk;
end

initial begin
    clr=1;i=0;
    #10 clr = 0;
    #10 i=2;
    #10 i =3;
    #10 i=10;
    #10 i=1;
    #50 $finish;
end
endmodule