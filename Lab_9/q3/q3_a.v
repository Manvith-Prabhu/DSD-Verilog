module seq_detector (input clk, input reset, input in, output out);
  reg [4:0] shift_reg;
  reg out;

  always @(posedge clk) begin
    if (reset) begin
      shift_reg <= 5'b0;
      out <= 1'b0;
    end else begin
      shift_reg <= {shift_reg[3:0], in};
      out <= (shift_reg == 5'b01101);
      if(out==1'b1)
       shift_reg <=5'b00000;
    end
  end
endmodule