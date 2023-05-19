`timescale 1ns / 1ns
`include "q3_b.v"

module seq_detector_tb;
  reg clk;
  reg reset;
  reg in;
  wire out;

  seq_detector s1 (clk, reset, in, out);

  always #5 clk = ~clk;
  initial
    begin
     $dumpfile("with_overlap.vcd");
     $dumpvars();
    end
   
  initial begin
    clk = 0;
    in=0;
    reset = 1;#10;
    reset = 0;#10;
    in = 1;#10;
    in = 0;#10;
    in = 1;#10;
    in = 0;#10;
    in = 1;#10;
    in = 1;#10;
    in = 0;#10;
    in = 1;#10;
    in = 1;#10;
    in = 0;#10;
    in = 1;#10;
  end

  initial 
   begin
    $display("Test Completed!");
    #140 $finish;
   end
endmodule
