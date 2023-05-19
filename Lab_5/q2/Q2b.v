module encoder16to14a (A,Y,V);
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
 casex(A)
  16'b1xxxxxxxxxxxxxxx:Y=15;
  16'b01xxxxxxxxxxxxxx:Y=14;
  16'b001xxxxxxxxxxxxx:Y=13;
  16'b0001xxxxxxxxxxxx:Y=12;
  16'b00001xxxxxxxxxxx:Y=11;
  16'b000001xxxxxxxxxx:Y=10;
  16'b0000001xxxxxxxxx:Y=9;
  16'b00000001xxxxxxxx:Y=8;
  16'b000000001xxxxxxx:Y=7;
  16'b0000000001xxxxxx:Y=6;
  16'b00000000001xxxxx:Y=5;
  16'b000000000001xxxx:Y=4;
  16'b0000000000001xxx:Y=3;
  16'b00000000000001xx:Y=2;
  16'b000000000000001x:Y=1;
  16'b0000000000000001:Y=0;
 endcase
 end
end
endmodule 