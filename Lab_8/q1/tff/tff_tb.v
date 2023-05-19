`timescale 1ns/1ns
`include "tff.v"

module tff_tb();
    reg clk;
    reg T;
    reg pr;
    reg clr;

    wire Q;
    wire _Q;

    tff TF(clk,T,pr,clr,Q,_Q);

    initial
    begin
        $dumpfile("tff_tb.vcd");
        $dumpvars();
    end

    always
        #5 clk = ~clk;

    initial
    begin
        clk=0;

        //Testing preset
        pr=1;
        clr=0;
        T=0;
        #10;

        //Testing clr
        pr=0;
        clr=1;
        T=0;
        #10;

        //Testing T=0
        pr=0;
        clr=0;
        T=0;
        #10;

        //Testing T=1
        pr=0;
        clr=0;
        T=1;
        #10;
    end

    initial
    begin
        $display("Test Completed!!");
        #50 $finish;
    end
endmodule