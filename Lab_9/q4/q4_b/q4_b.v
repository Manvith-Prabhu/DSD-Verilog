`include "dff.v"

module struct_lfsr(input clk, input reset, output [2:0] Q, input[2:0] load);
wire [2:0] _Q;
wire p;
not(_Q[2],Q[2]);
not(_Q[1],Q[1]);
not(_Q[0],Q[0]);
xor(p,Q[0],Q[1]);

dff d2(clk,p,Q[2],_Q[2],reset,load[2]);
dff d1(clk,Q[2],Q[1],_Q[1],reset,load[1]);
dff d0(clk,Q[1],Q[0],_Q[0],reset,load[0]);

endmodule