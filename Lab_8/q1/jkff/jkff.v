module jkff(clk,J,K,pr,clr,Q,_Q);
    input clk;
    input J;
    input K;
    input pr;
    input clr;

    output reg Q;
    output reg _Q;

    always @(posedge clk)
    begin
        if(pr)
        begin
            Q<=1;
            _Q<=0;
        end
        else if(clr)
        begin
            Q<=0;
            _Q<=1;
        end
        else
        begin
            case({J,K})
                2'b00: begin
                    Q<=Q;
                    _Q<=_Q;
                end
                2'b01: begin
                    Q<=0;
                    _Q<=1;
                end
                2'b10: begin
                    Q<=1;
                    _Q<=0;
                end
                2'b11: begin
                    Q<=~Q;
                    _Q<=~_Q;
                end
            endcase
        end
    end
endmodule