`timescale 1ns/1ns
`include "dl.v"

module dl_tb();
    reg C;
    reg D;
    integer i;
    integer j;

    wire Q;
    wire _Q;

    dl DL(C,D,Q,_Q);

    initial
    begin
        $dumpfile("dl_tb.vcd");
        $dumpvars();
    end

    initial
    begin
        C=1;
        D=1;
        #10;
        D=0;
        #10;

        C=0;
        for(i=0;i<2;i=i+1)
        begin
            D=i;
            #10;
        end

        for(j=0;j<4;j=j+1)
        begin
            {C,D} = j;
            #10;
        end
    end

    initial
    begin
        $display("Test Completed");
    end
endmodule