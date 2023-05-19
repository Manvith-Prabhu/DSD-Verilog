`timescale 1ns/1ns
`include "q1.v"
module serial_adder_tb();
 reg clk;
 reg reset;
 reg  a;
 reg b;
 reg cin;
 wire cout;
 wire sum;

 serial_adder S(clk,reset,a,b,cin,sum,cout);

 initial
    begin
        $dumpfile("q1_tb.vcd");
        $dumpvars();
    end
 always 
    #5 clk=~clk;
 initial 
    begin
        clk=0;
        
        reset = 0;
        a = 0;
        b = 0;
        cin = 0;
        reset = 1;  
        #20;
        reset = 0;
        //add two 4 bit numbers, 1011 + 1001 = 10101
        a = 1; b = 1; cin = 1;    #10;
        a = 1; b = 0; cin = 0;  #10;
        a = 0; b = 0; cin = 0;  #10;
        a = 1; b = 1; cin = 0;  #10;
        reset = 1;
        #10;
        reset = 0;
        //add two 5 bit numbers, 11001 + 10011 = 101101
        a = 1; b = 1; cin = 1;    #10;
        a = 0; b = 1; cin = 0;  #10;
        a = 0; b = 0; cin = 0;  #10;
        a = 1; b = 0; cin = 0;  #10;
        a = 1; b = 1; cin = 0;  #10;
        reset = 1;
        #10;

    end
 initial
    begin
        $display("Test Completed!!");
        #140 $finish;
    end
endmodule
