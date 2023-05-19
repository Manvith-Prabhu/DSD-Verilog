`timescale 1ns/1ns
`include "q4_a.v"

module lfsr_tb();
  reg clk;
  reg reset;
  reg [2:0] load;
  wire [2:0] q;

  lfsr L (clk, reset, q, load);
  always #5 clk=~clk;

  initial
    begin
     $dumpfile("behavioral_lfsr.vcd");
     $dumpvars();
    end

  initial begin
    clk = 0;
    load=3'b111;
    reset = 1;
    #10;
    reset = 0;
    end
  initial begin
    $display("Test completed!");
   #100 $finish;
  end
endmodule