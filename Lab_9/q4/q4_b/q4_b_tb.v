`timescale 1ns/1ns
`include "q4_b.v"

module struct_lfsr_tb();
  reg clk;
  reg reset;
  reg [2:0] load;
  wire [2:0] q;

  struct_lfsr L (clk, reset, q, load);
  always #5 clk=~clk;

  initial
    begin
     $dumpfile("structural_lfsr.vcd");
     $dumpvars();
    end

  initial begin
    clk = 0;
    load=3'b111;
    reset = 1;
    #10;
    reset = 0;
    load=3'b111;
    #10;
    load=3'b000;
    end
  initial begin
    $display("Test completed!");
   #100 $finish;
  end
endmodule