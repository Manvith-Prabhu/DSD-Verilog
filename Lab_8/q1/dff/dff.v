module dFlipFlop(C,D,Q,_Q,clr,pr);
input C;
input D;
input clr;
input pr;

output reg Q;
output reg _Q;

always @(posedge C,pr,clr)
begin
if(pr)
begin
Q<=1;
_Q<=0;
end
else if(clr)
begin
Q<=0;
_Q<=1;
end
else
begin
 Q<=D;
_Q<=~D;
end
    end
endmodule