module serial_adder(input clk, input reset, input a, input b, input cin, output sum,output cout);
reg sum,cout;
reg c,flag;
always @(posedge clk or posedge reset) begin
    if(reset == 1) begin
        sum = 0;
        cout = c;
        flag = 0;
    end else begin
        if(flag == 0) begin
            c = cin;  
            flag = 1; 
        end 
        cout = 0;
        sum = a ^ b ^ c; 
        c = (a & b) | (c & b) | (a & c);
    end 
end
endmodule