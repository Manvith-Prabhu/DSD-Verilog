`timescale 1ns/1ns
`include "counter.v"

module UpDowncounter_tb;
    reg clk;
    reg mode;
    reg load;
    reg [3:0] din;
    reg pr;
    reg clr;
    reg CE;

    wire [3:0] count;

    UpDowncounter U`DC(clk,mode,load,din,pr,clr,CE,count);

    initial
    begin
        $dumpfile("counter_tb.vcd");
        $dumpvars();
    end

    always
        #5 clk = ~clk;

    initial
    begin
        clk=0;
        CE=1;
         
        //up
        load=1;
        #10;
        load=0;
        din=4'b0111;
        pr=0;
        clr=0;
        mode=0;
        #160;
        
        //down
        load=1;
        #10;
        load=0;
        din=4'b0111;
        pr=0;
        clr=0;
        mode=1;
        #160;

        //preset
        load=1;
        #10;
        load=0;
        din=4'b0111;
        pr=1;
        clr=0;
        mode=0;
        #30;

        //clear
        load=1;
        #10;
        load=0;
        din=4'b0111;
        pr=0;
        clr=1;
        mode=0;
        #30;

       //count disable
        CE=0;
         load=1;
        #10;
        load=0;
        din=4'b0111;
        pr=0;
        clr=0;
        mode=0;
        #20;


    end

    initial
    begin
        $display("Test Completed!!");
        #400 $finish;
    end
endmodule