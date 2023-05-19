module shiftReg4bit(clk,clr,S,PL,Q);
    input clk;
    input clr;
    input [1:0] S;
    input [3:0] PL;

    output reg [3:0] Q;

    always @(posedge clk)
    begin
        if(clr) Q=0;
        else
        begin
            case(S)
                2'b00: Q <= Q;
                2'b01: Q <= {PL[0],PL[3],PL[2],PL[1]};
                2'b10: Q <= {PL[2],PL[1],PL[0],PL[3]};
                2'b11: Q <= PL;
            endcase
        end
    end
endmodule