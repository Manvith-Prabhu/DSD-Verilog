`timescale 1ns/1ns
`include "shifter.v"

module shiftReg4bit_tb;
    reg clk;
    reg clr;
    reg [1:0] S;
    reg [3:0] PL;

    wire [3:0] Q;

    shiftReg4bit SR(clk,clr,S,PL,Q);

    initial
    begin
        $dumpfile("shifter_tb.vcd");
        $dumpvars();
    end

    always
        #5 clk = ~clk;

    initial
    begin
        clk=0;

        PL=4'b1001;
        S=2'b01;
        clr=0;
        #10;

        PL=4'b1001;
        S=2'b10;
        clr=0;
        #10;

        PL=4'b1001;
        S=2'b11;
        clr=0;
        #10;

        PL=4'b1001;
        S=2'b00;
        clr=0;
        #10;

        PL=4'b1001;
        S=2'b00;
        clr=1;
        #10;
    end

    initial
    begin
        $display("Test Completed!!");
        #60 $finish;
    end
endmodule