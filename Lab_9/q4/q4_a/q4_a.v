module lfsr (input clk, input reset, output reg [2:0] Q, input[2:0] load);
  reg flag;
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      Q <= 3'b000;
      flag=0;
    end else begin
      if(flag==0)
      begin
        Q=load;
        flag=1;
      end
      Q <= {Q[0] ^ Q[2], Q[2], Q[1]};
    end
  end
endmodule
