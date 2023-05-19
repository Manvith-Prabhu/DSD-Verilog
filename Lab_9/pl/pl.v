module accumulator (i,acc,clk,clr,overflow_flag);
    input [3:0]i;
    output [3:0]acc;
    reg [4:0]accum;
    input clk,clr;
    output overflow_flag;
    reg overflow_flag,carry;

    always @(posedge clk or posedge clr) begin
        if (clr) begin
            accum <= 5'b00000;
            carry <= 4'b0000;
        end
        else begin
            accum <= accum+i;
            if (accum>15)
            begin
                accum[4]<=0;
                overflow_flag<=1;
            end
            else begin
                overflow_flag=0;
            
        end
    end
    end
    assign acc=accum[3:0];
endmodule