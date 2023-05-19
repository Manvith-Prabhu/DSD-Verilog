module dl(C,D,Q,_Q);
    input C;
    input D;

    output reg Q;
    output reg _Q;

    always @(C,D)
        begin
            case (C)
                0: begin
                    Q<=Q;
                    _Q<=_Q;
                end
                default: case (D)
                    0: begin
                        Q<=0;
                        _Q<=1;
                    end
                    1: begin
                        Q<=1;
                        _Q<=0;
                    end
                endcase
            endcase
        end
endmodule