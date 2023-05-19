module mux81b(S,i7,i6,i5,i4,i3,i2,i1,i0,Y);
 input [2:0] S;
 input [3:0] i7;
 input [3:0] i6;
 input [3:0] i5;
 input [3:0] i4;
 input [3:0] i3;
 input [3:0] i2;
 input [3:0] i1;
 input [3:0] i0;
 output [3:0] Y;
 reg [3:0] Y;
always @(S,i7,i6,i5,i4,i3,i2,i1,i0) 
begin
    if(S==0)
      Y=i0;
 else if(S==1)
      Y=i1;
 else if(S==2)
      Y=i2;
 else if(S==3)
      Y=i3;
 else if(S==4)
      Y=i4;
 else if(S==5)
      Y=i5;
 else if(S==6)
      Y=i6;
 else if(S==7)
      Y=i7;
end
endmodule