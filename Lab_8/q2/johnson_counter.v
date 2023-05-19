module johnsonCounter(clk,clr,load,D,Q);
    input clk;
    input clr;
    input load;
    input [7:0] D;

    output reg [7:0] Q;

    always @(load)
        Q = load ? D : Q;

    always @ (posedge clk)
    begin
        if(~load)
        begin
            if(clr) Q=0;
            else
            begin
                Q[7]<=Q[6];
                Q[6]<=Q[5];
                Q[5]<=Q[4];
                Q[4]<=Q[3];
                Q[3]<=Q[2];
                Q[2]<=Q[1];
                Q[1]<=Q[0];
                Q[0]<=~Q[7];
            end
        end
    end
endmodule