module bsg(input clk,input reset, output [3:0]Q);
reg [3:0] Q;

always@(posedge clk or posedge reset)
 begin
  if(reset==1)
   begin
    Q=0;
   end
  else
   begin
    case(Q)
    0:Q=8;
    8:Q=12;
    12:Q=6;
    6:Q=13;
    13:Q=11;
    11:Q=7;
    7:Q=3;
    3:Q=1;
    1:Q=0;
    endcase
 end

 end

endmodule