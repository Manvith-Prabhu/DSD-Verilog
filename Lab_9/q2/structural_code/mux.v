module mux (I3,I2,I1,I0,S1,S0,Y);

    input I3,I2,I1,I0;
    input S1,S0;

    output Y;

    assign Y = S1 ? (S0 ? I3 : I2) : (S0 ? I1 : I0);

endmodule