module convertor(P,Q,k);
input k;
input [15:0]P;
output [15:0]Q;
reg [15:0]Q;
always @(k,P)
begin
case(k)
 0:begin
Q[15]=P[15];
Q[14]=P[15]^P[14];
Q[13]=P[14]^P[13];
Q[12]=P[13]^P[12];
Q[11]=P[12]^P[11];
Q[10]=P[11]^P[10];
Q[9]=P[10]^P[9];
Q[8]=P[9]^P[8];
Q[7]=P[8]^P[7];
Q[6]=P[7]^P[6];
Q[5]=P[6]^P[5];
Q[4]=P[5]^P[4];
Q[3]=P[4]^P[3];
Q[2]=P[3]^P[2];
Q[1]=P[2]^P[1];
Q[0]=P[1]^P[0];
 end
 1:
 begin 
 Q[15]=P[15];
Q[14]=P[15]^P[14];
Q[13]=P[15]^P[14]^P[13];
Q[12]=P[15]^P[14]^P[13]^P[12];
Q[11]=P[15]^P[14]^P[13]^P[12]^P[11];
Q[10]=P[15]^P[14]^P[13]^P[12]^P[11]^P[10];
Q[9]=P[15]^P[14]^P[13]^P[12]^P[11]^P[10]^P[9];
Q[8]=P[15]^P[14]^P[13]^P[12]^P[11]^P[10]^P[9]^P[8];
Q[7]=P[15]^P[14]^P[13]^P[12]^P[11]^P[10]^P[9]^P[8]^P[7];
Q[6]=P[15]^P[14]^P[13]^P[12]^P[11]^P[10]^P[9]^P[8]^P[7]^P[6];
Q[5]=P[15]^P[14]^P[13]^P[12]^P[11]^P[10]^P[9]^P[8]^P[7]^P[6]^P[5];
Q[4]=P[15]^P[14]^P[13]^P[12]^P[11]^P[10]^P[9]^P[8]^P[7]^P[6]^P[5]^P[4];
Q[3]=P[15]^P[14]^P[13]^P[12]^P[11]^P[10]^P[9]^P[8]^P[7]^P[6]^P[5]^P[4]^P[3];
Q[2]=P[15]^P[14]^P[13]^P[12]^P[11]^P[10]^P[9]^P[8]^P[7]^P[6]^P[5]^P[4]^P[3]^P[2];
Q[1]=P[15]^P[14]^P[13]^P[12]^P[11]^P[10]^P[9]^P[8]^P[7]^P[6]^P[5]^P[4]^P[3]^P[2]^P[1];
Q[0]=P[15]^P[14]^P[13]^P[12]^P[11]^P[10]^P[9]^P[8]^P[7]^P[6]^P[5]^P[4]^Q[3]^P[2]^P[1]^P[0];

 end 
endcase
end
endmodule
