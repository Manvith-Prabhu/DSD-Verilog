module encoder16to14b (A,Y,V);
input [15:0] A;
output [3:0] Y;
output V;
reg V;
reg [3:0] Y;
always @(A)
begin
 if(A==0)
  V=0;
else 
 begin
    V=1;
    if(A[15]==1)
     Y=15;
 else if(A[14]==1)
     Y=14;
 else if(A[13]==1)
     Y=13;
else if(A[12]==1)
     Y=12;
else if(A[11]==1)
     Y=11;
else if(A[10]==1)
     Y=10;
else if(A[9]==1)
     Y=9;
else if(A[8]==1)
     Y=8;
else if(A[7]==1)
     Y=7;
else if(A[6]==1)
     Y=6;
else if(A[5]==1)
     Y=5;
else if(A[4]==1)
     Y=4;
else if(A[3]==1)
     Y=2;
else if(A[2]==1)
     Y=2;
else if(A[1]==1)
     Y=1;
else Y=0;
 end
end
endmodule
