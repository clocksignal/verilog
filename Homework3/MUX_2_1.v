module MUX_2_1(
    input data0,
    input data1,
    input select,
    output out);

    assign out= data1 & select | !select & data0;

endmodule

