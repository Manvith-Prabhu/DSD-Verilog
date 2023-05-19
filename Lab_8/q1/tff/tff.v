module tff(clk,T,pr,clr,Q,_Q);
    input clk;
    input T;
    input pr;
    input clr;

    output reg Q;
    output reg _Q;

    always @(negedge clk)
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
            if(T) 
            begin Q<=~Q;
            _Q<=Q;
            end
            else begin
            Q<=Q;
            _Q<=~Q;
            end
        end
    end
endmodule