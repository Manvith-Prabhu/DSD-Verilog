module decoder24 (E,A,Y);
input E;
input [1:0] A;
output [0:3] Y;
reg [0:3] Y;
always @(E,A)
begin 
  if(E==1'b0)
   Y=0;
 else 
    if(A==0)
        Y=8;
 else   if(A==1)
        Y=4;
 else   if(A==2)
        Y=2;
 else   if(A==3)
        Y=1;
 end
endmodule