`include "shift_register.v"
module ssg(input clk, input reset, output [3:0] Q);
wire p1, p2, p3, p4, p5, SIR, SIL, S1,S0;
not(p1,Q[0]);
and(p2,p1,Q[1]);
nor(p3,Q[2],Q[1],Q[0]);
and(p4,Q[0],Q[3]);
or(p5,p4,p2);
assign SIR=p3;
assign SIL=p5;
assign S1=p5;
not(S0,p5);
shift_register SR(clk,reset,S1,S0,SIL,SIR,4'b0000,Q);
endmodule