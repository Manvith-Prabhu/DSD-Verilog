`timescale 1ns / 1ns
`include "pl_q1_a.v"

module pl_q1_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg Ci;

    wire [3:0] S;
    wire Co;

    Carrylookaheadadder A1 (S,Co,A,B,Ci);

    initial
        begin
            $dumpfile("pl_q1_a_tb.vcd");
            $dumpvars();
        end

    initial
        begin
            A=0;
            B=0;
            Ci=0;
            #10;

            A=15;
            B=15;
            Ci=1;
            #10;

            A=0;
            B=15;
            Ci=0;
            #10;

            A=15;
            B=0;
            Ci=0;
            #10;

            A=10;
            B=10;
            Ci=1;
            #10;

            A=10;
            B=5;
            Ci=1;
                
        end

    initial
        begin
            $display("Test Complete!");
        end

endmodule