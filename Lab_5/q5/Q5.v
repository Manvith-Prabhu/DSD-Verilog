module decoder416(E,A,Y);
input E;
wire E_;
input [2:0] A;
output [15:0] Y;
not(E_,E);
decoder38 d1(E,A,Y[7:0]);
decoder38 d2(E_,A,Y[15:8]);
endmodule

module decoder38(E,A,Y);
input E;
input [2:0] A;
output [0:7] Y;
reg [0:7] Y;
always @(E,A)
 begin
    if(E==0)
     Y=0;
    else begin
         case(A)
         0:Y=128;
         1:Y=64;
         2:Y=32;
         3:Y=16;
         4:Y=8;
         5:Y=4;
         6:Y=2;
         7:Y=1;
         endcase
    end
 end
endmodule


     