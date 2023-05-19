`include "dff.v"
`include "mux.v"
module shift_register(input clk, input clr, input S1,input S0,input SIL,input SIR, input [3:0] P, output [3:0] Q);
wire y3,y2,y1,y0;
wire [3:0] _Q;

not(_Q[3],Q[3]);
not(_Q[2],Q[2]);
not(_Q[1],Q[1]);
not(_Q[0],Q[0]); 

dff d3(clk,y3,Q[3],_Q[3],clr,1'b0);
dff d2(clk,y2,Q[2],_Q[2],clr,1'b0);
dff d1(clk,y1,Q[1],_Q[1],clr,1'b0);
dff d0(clk,y0,Q[0],_Q[0],clr,1'b0);

mux m3(P[3],Q[2],SIR,Q[3],S1,S0,y3);
mux m2(P[2],Q[1],Q[3],Q[2],S1,S0,y2);
mux m1(P[1],Q[0],Q[2],Q[1],S1,S0,y1);
mux m0(P[0],SIL,Q[1],Q[0],S1,S0,y0);
endmodule