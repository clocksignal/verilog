module barrel_shifter_2(
    input [3:0]x,
    input [1:0]select,
    output[3:0]y
);

    MUX4_1 UUT1(.data0(x[0]),.data1(x[3]),.data2(x[2]),.data3(x[1]),.select(select),.f(y[0]));
    MUX4_1 UUT2(.data0(x[1]),.data1(x[0]),.data2(x[3]),.data3(x[2]),.select(select),.f(y[1]));
    MUX4_1 UUT3(.data0(x[2]),.data1(x[1]),.data2(x[0]),.data3(x[3]),.select(select),.f(y[2]));
    MUX4_1 UUT4(.data0(x[3]),.data1(x[2]),.data2(x[1]),.data3(x[0]),.select(select),.f(y[3]));
    
    
endmodule
