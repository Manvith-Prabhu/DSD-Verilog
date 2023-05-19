`timescale 1ns/1ns
`include "Q2a.v"

module Q2a();
reg [15:0] A;
wire [3:0]  Y;
wire V;
encoder16to14b e1 (A,Y,V);

initial begin
    $dumpfile("Q2a_tb.vcd");
    $dumpvars();
end

initial begin
    A=16'b1010101010101010;
    #10;

    A=16'b0101010101010101;
    #10;

    A=16'b0010101010101010;
    #10;

    A=16'b0001010101010101;
    #10;

    A=16'b0000101010101010;
    #10;

    A=16'b0000010101010101;
    #10;

    A=16'b0000001010101010;
    #10;

    A=16'b0000000101010101;
    #10;

    A=16'b0000000010101010;
    #10;

    A=16'b0000000001010101;
    #10;

    A=16'b0000000000101010;
    #10;

    A=16'b0000000000010101;
    #10;

    A=16'b0000000000001010;
    #10;

    A=16'b0000000000000101;
    #10;

    A=16'b0000000000000010;
    #10;

    A=16'b0000000000000001;
    #10;
end

initial begin
    $display("Test completed!");
end

endmodule