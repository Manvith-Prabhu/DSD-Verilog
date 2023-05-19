module adder_subtractor(a,b,c_bin,s_d,c_bout,k);
 input [3:0] a;
 input [3:0] b;
 input c_bin;
 input k;
 output c_bout;
 output [3:0] s_d;
 reg [3:0] s_d;
 reg c_bout;
 reg [1:0] temp;
 reg u;
 integer i;
always @(a,b,c_bin)
 begin
    case(k)
    0:begin
      u=c_bin;
      for(i=0;i<4;i=i+1)
       begin
      //  temp=a[i]+b[i]+u;
      //  s_d[i]=temp[0];
      //  u=temp[1];
      s_d[i]=a[i]^b[i]^u;
      u= a[i]&b[i]|b[i]&u|u&a[i];
       end
       c_bout=u;
      end
    1:begin
      u=c_bin;
      for(i=0;i<4;i++)
       begin
       temp=a[i]-b[i]-u;
       s_d[i]=temp[0];
       u=temp[1];
       end
      c_bout=u;
      end
    endcase
 end
endmodule