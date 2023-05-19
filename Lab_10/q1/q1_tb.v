`timescale 1ns/1ns
`include "q1.v"

module tfc_tb();
reg clk;
reg set;
wire red;
wire yellow;
wire green;

traffic_light_controller T(clk, set, red, yellow, green);
always #5 clk=~clk;

initial begin
    $dumpfile("traffic_light_controller.vcd");
    $dumpvars();
end

initial begin
    clk=0;
    set=1;
    #10;
    set=0;
end

initial begin
   #10000000 $finish;
end

endmodule