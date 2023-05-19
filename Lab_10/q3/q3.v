module dispenser(input clk, input reset, input [1:0] in, output reg p, output reg c);
reg [4:0] state;
reg [4:0] next_state;
parameter A = 5'b00000; 
parameter B = 5'b00100;
parameter C = 5'b01000;
parameter D = 5'b01101; 
parameter E = 5'b10011;
always @(posedge clk or posedge reset) begin
if (reset) begin
state <= A;
end else begin
state <= next_state;
end
end

always @(*) begin
next_state <= A;
{p,c} <=2'b00;
case (state)
A: begin
if(in == 2'b00)
next_state <= A;
else if(in == 2'b01)
next_state <= B;
else if(in == 2'b10)
next_state <= C;
end
B: begin
if(in == 2'b00)
next_state <= B;
else if(in == 2'b01)
next_state <= C;
else if(in == 2'b10)
next_state <= D;
end
C: begin
if(in == 2'b00)
next_state <= C;
else if(in == 2'b01)
next_state <= D;
else if(in == 2'b10)
next_state <= E;
end
D: begin
if(in == 2'b00)
next_state <= A;
else if(in == 2'b01)
next_state <= C;
else if(in == 2'b10)
next_state <= B;
end
E: begin
if(in == 2'b00)
next_state <= A;
else if(in == 2'b01)
next_state <= B;
else if(in == 2'b10)
next_state <= C;
end
endcase
{p,c} <= state[1:0];
end
endmodule
