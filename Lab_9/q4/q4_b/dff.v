module dff(clk,D,Q,_Q,clr,pr);
input clk;
input D;
input clr;
input pr;

output reg Q;
output reg _Q;

always @(posedge clk,pr,clr)
begin
if(clr)
begin
Q<=0;
_Q<=1;
end
else if(pr)
begin
Q<=1;
_Q<=0;
end
else
begin
 Q<=D;
_Q<=~D;
end
    end
endmodule