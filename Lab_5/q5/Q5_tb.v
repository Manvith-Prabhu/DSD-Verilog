`timescale 1ns/1ns
`include "Q5.v"

module Q5_tb();
reg E;
reg [2:0] A;
wire [15:0] Y;
integer i;
decoder416 t(E,A,Y);
initial
        begin
            $dumpfile("Q5_tb.vcd");
            $dumpvars();
        end
initial 
       begin
          for(i=0;i<16;i=i+1)
            begin
            {E,A}=i;
            #10;
            end
       end
initial
        begin
            $display("Test Complete!");
        end  

endmodule