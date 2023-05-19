module seq_detector(input clk, input reset, input in, output reg match);
reg [2:0] state;
reg [2:0] next_state;
parameter S0 = 3'b000; 
parameter S1 = 3'b001;
parameter S2 = 3'b010;
parameter S3 = 3'b011; 
parameter S4 = 3'b100;
parameter S5 = 3'b101;
parameter S6 = 3'b110;

always @(posedge clk or posedge reset) begin
if (reset) begin
state <= S0;
end else begin
state <= next_state;
end
end

always @(*) begin
match <= 1'b0;
next_state <= S0;
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
next_state <= S0;
match<=1'b1;
end else if (in == 1'b1) begin
next_state <= S1;
end
end
S6: begin
if (in == 1'b0) begin
next_state <= S2;
end else if (in == 1'b1) begin
next_state <= S0;
match<= 1'b1;
end
end
endcase
end
endmodule