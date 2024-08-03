module barrel_shifter_1(
    input  select ,
    input [3:0]a,
    output[3:0]out);

    MUX_2_1 UUT1(.data0(a[0]),.data1(a[3]),.select(select),.out(out[0]));
    MUX_2_1 UUT2(.data0(a[1]),.data1(a[0]),.select(select),.out(out[1]));
    MUX_2_1 UUT3(.data0(a[2]),.data1(a[1]),.select(select),.out(out[2]));
    MUX_2_1 UUT4(.data0(a[3]),.data1(a[2]),.select(select),.out(out[3]));

endmodule
