module seq_detector(input clk, input reset, input in, output reg match);
reg [4:0] state;
reg [4:0] next_state;
parameter S0 = 5'b00000; 
parameter S1 = 5'b00010;
parameter S2 = 5'b00100;
parameter S3 = 5'b00110; 
parameter S4 = 5'b01000;
parameter S5 = 5'b01010;
parameter S6 = 5'b01100;
parameter S7 = 5'b01111;
parameter S8 = 5'b10001;

always @(posedge clk or posedge reset) begin
if (reset) begin
state <= S0;
end else begin
state <= next_state;
end
end

always @(*) begin
next_state <= S0;
match <=1'b0;
case (state)
S0: begin
if (in == 1'b0)
next_state <= S2;
else next_state <=S1;
end
S1: begin
if (in == 1'b1) begin
next_state <= S1;
end else if (in == 1'b0) begin
next_state <= S4;
end
end
S2: begin
if (in == 1'b1) begin
next_state <= S3;
end else if (in == 1'b0) begin
next_state <= S2;
end
end
S3: begin
if (in == 1'b0) begin
next_state <= S4;
end else if (in == 1'b1) begin
next_state <= S5;
end
end
S4: begin
if (in == 1'b0) begin
next_state <= S6;
end else if (in == 1'b1) begin
next_state <= S3;
end
end
S5: begin
if (in == 1'b0) begin
next_state <= S7;
end else if (in == 1'b1) begin
next_state <= S1;
end
end
S6: begin
if (in == 1'b0) begin
next_state <= S2;
end else if (in == 1'b1) begin
next_state <= S8;
end
end
S7: begin
if (in == 1'b0) begin
next_state <= S6;
end else if (in == 1'b1) begin
next_state <= S4;
end
end
S8: begin
if (in == 1'b0) begin
next_state <= S4;
end else if (in == 1'b1) begin
next_state <= S5;
end
end
endcase
match <=state[0];
end
endmodule