module UpDowncounter(clk,mode,load,din,pr,clr,CE,count);
    input clk;
    input mode;
    input load;
    input [3:0] din;
    input pr;
    input clr;
    input CE;

    output reg [3:0] count = 0;

    always @(load)
        count = load ? din : 0;

    always @(posedge clk,pr,clr)
    begin
        if(pr) count = 4'b1111;
        else if(clr) count = 4'b0000;

        if(CE)
        begin
            if(~mode) //count Up
            begin
                if(count==15) count <= 0;
                else count<=count+1;
            end
            else //count Down
            begin
                if(count==0) count<=15;
                else count<=count-1;
            end
        end
    end
endmodule