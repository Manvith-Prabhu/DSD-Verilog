`timescale 1ns/1ns
`include "dff.v"

module d_flip_flop_tb();
    reg clk;
    reg D;
    reg clr;
    reg pr;

    wire Q;
    wire _Q;

    dFlipFlop D1(clk,D,Q,_Q,clr,pr);

    initial
    begin
        $dumpfile("d_flip_flop_tb.vcd");
        $dumpvars();
    end

    always
        #5 clk = ~clk;
    
    initial
    begin
        clk=0;

        D=0;
        pr=0;
        clr=0;
        #10;
        D=1;
        pr=0;
        clr=0;
        #10;

        D=0;
        pr=1;
        clr=0;
        #10;
        D=1;
        pr=1;
        clr=0;
        #10;

        D=1;
        pr=0;
        clr=1;
        #10;
        D=0;
        pr=0;
        clr=1;
        #10;
    end

    initial
    begin
        $display("Test Completed!!");
        #70 $finish;
    end
endmodule