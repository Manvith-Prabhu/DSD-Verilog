`timescale 1ns/1ns
`include "q2_b.v"

module ssg_tb();
    reg clk;
    reg reset;
    wire [3:0] Q;

    ssg S1(clk,reset,Q);

    initial
    begin
        $dumpfile("structural_serial_counter_tb.vcd");
        $dumpvars();
    end

    always
        #10 clk = ~clk;

    initial
    begin
        clk=0;

      reset=1;
      #10;
      reset=0;
      #150;

      reset=1;
      #10;
      reset=0;
      #150;
    end

    initial
    begin
        $display("Test Completed!!");
        #320 $finish;
    end
endmodule
