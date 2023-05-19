module Carrylookaheadadderb(S,Cout,A,B,Cin);
  output [3:0]S;
  output Cout;
  input [3:0]A,B;
  input Cin;
  reg [3:0]S;
  reg Cout;
  reg [4:0]C;
  integer i;
  always @(A,B,Cin)
  begin
  C[0] = Cin;
  for(i=0;i<5;i=i+1)
     begin
     S[i]=A[i]^B[i]^C[i];
     C[i+1] = ((A[i]&B[i])|((A[i]^B[i])&C[i]));
     end
  Cout = C[4];
  end
  
endmodule