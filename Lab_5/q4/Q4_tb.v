`timescale 1ns / 1ns
`include "Q4.v"

module Q4_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg c_bi;
    reg k;

    wire [3:0] s_d;
    wire c_bo;

    adder_subtractor A1 (A,B,c_bi,s_d,c_bo,k);

    initial
        begin
            $dumpfile("Q4_tb.vcd");
            $dumpvars();
        end

    initial
        begin
           k=0;
           begin A=0;
            B=0;
            c_bi=0;
            #10;

            A=15;
            B=15;
            c_bi=1;
            #10;

            A=0;
            B=15;
            c_bi=0;
            #10;

            A=15;
            B=0;
            c_bi=0;
            #10;

            A=10;
            B=10;
            c_bi=1;
            #10;

            A=10;
            B=5;
            c_bi=1;
            #10;
           end 
           k=1;
             begin A=0;
            B=0;
            c_bi=0;
            #10;

            A=15;
            B=15;
            c_bi=1;
            #10;

            A=0;
            B=15;
            c_bi=0;
            #10;

            A=15;
            B=0;
            c_bi=0;
            #10;

            A=10;
            B=10;
            c_bi=1;
            #10;

            A=10;
            B=5;
            c_bi=1;
            #10;
           end    
        end

    initial
        begin
            $display("Test Complete!");
        end

endmodule