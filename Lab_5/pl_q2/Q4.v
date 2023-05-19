module mux4to1 (Y,S1,S0,I0,I1,I2,I3);

    input S1;
    input S0;
    input I3;
    input I2;
    input I1;
    input I0;

    output Y;

    assign Y = S1 ? (S0 ? I3 : I2) : (S0 ? I1 : I0);

endmodule


