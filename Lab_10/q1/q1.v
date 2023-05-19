module traffic_light_controller (
  input clk, input set,
  output reg red,
  output reg yellow,
  output reg green
);
  
  // State register to store the current state of the controller
  reg [1:0] state;
  reg [31:0] counter;
  
  // Next-state logic for each state
  always @ (posedge clk or posedge set) begin
    if(set) begin
     counter<=32'b0;
     state<=2'b00;
    end
    else if(state==2'b00 && counter==32'd100000) begin
        counter<=32'b0;
        state <= 2'b01;
      end
    else if(state==2'b01 && counter==32'd200000) begin
        counter<=32'b0;
        state <= 2'b10;
      end
    else if(state==2'b10 && counter==32'd50000) begin
        counter<=32'b0;
        state <= 2'b11;
      end
    else if(state==2'b11)
     state<=2'b00;
    else begin
    counter<=counter+1;
    end
  end

  
  // Output logic for each state
  always @ (state) begin
    case (state)
      2'b00: begin
        red <= 1;
        yellow <= 0;
        green <= 0;
      end
      2'b01: begin
        red <= 0;
        yellow <= 0;
        green <= 1;
      end
      2'b10: begin
        red <= 0;
        yellow <= 1;
        green <= 0;
      end
      2'b11: begin
        red <= 1;
        yellow <= 0;
        green <= 0;
      end
    endcase
  end
  
endmodule
