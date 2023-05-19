`timescale 1ns/1ns
`include "jkff.v"

module jkff_tb();
    reg clk;
    reg J;
    reg K;
    reg pr;
    reg clr;

    wire Q;
    wire _Q;

    jkff JF(clk,J,K,pr,clr,Q,_Q);

    initial
    begin
        $dumpfile("jkff_tb.vcd");
        $dumpvars();
    end

    always
        #5 clk = ~clk;

    initial
    begin
        clk=0;

        //Q=0
        J=0;
        K=1;
        pr=0;
        clr=0;
        #10;

        //Memory
        J=0;
        K=0;
        pr=0;
        clr=0;
        #10;

        //Testing preset
        J=0;
        K=1;
        pr=1;
        clr=0;
        #10;

        //Testing Clear
        J=0;
        K=1;
        pr=0;
        clr=1;
        #10;

        //Q=1
        J=1;
        K=0;
        pr=0;
        clr=0;
        #10;

        //Toggle
        J=1;
        K=1;
        pr=0;
        clr=0;
        #30;
    end

    initial
    begin
        $display("Test Completed!!");
        #70 $finish;
    end
endmodule