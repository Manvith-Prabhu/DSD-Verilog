module decoder24a (E,A,Y);
input [1:0] A;
input E;
output [0:3] Y;
reg [0:3] Y;
always @(E,A)
begin 
  if(E==1'b0)
  Y=0;
  else begin 
    case(A)
    0:Y=8;
    1:Y=4;
    2:Y=2;
    3:Y=1;
    endcase
  end

end
endmodule