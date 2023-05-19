`timescale 1ns/1ns
`include "johnson_counter.v"

module johnsonCounter_tb();
    reg clk;
    reg clr;
    reg load;
    reg [7:0] D;

    wire [7:0] Q;

    johnsonCounter JC(clk,clr,load,D,Q);

    initial
    begin
        $dumpfile("jc_tb.vcd");
        $dumpvars();
    end

    always
        #10 clk = ~clk;

    initial
    begin
        clk = 0;
        
        load = 0;
        clr = 1;
        #40;
        clr = 0;
        #40;

        load = 1;
        D = 0;
        clr = 0;
        #40;

        load = 0;
    end

    initial
    begin
        $display("Test Completed!!");
        #420 $finish;
    end
endmodule