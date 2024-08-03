//module MUX4_2
//    (output out);
//    reg [3:0] x;
//    wire [1:0] y;
//    reg [1:0] s;
    
//    MUX_2_1 UUT1 (.ctr(s[0]),.a(x[0]),.b(x[1]),.out(y[0]));
//    MUX_2_1 UUT2 (.ctr(s[0]),.a(x[2]),.b(x[3]),.out(y[1]));
//    MUX_2_1 UUT3 (.ctr(s[1]),.a(y[1]),.b(y[2]),.out(out));
    
module MUX4_1
    (
    input data0,
    input data1,
    input data2,
    input data3,
    input [1:0]select,
    output     f
    );
    wire m1,m2;
    
    MUX_2_1 M1(.data0(data0),.data1(data1),.select(select[0]),.out(m1));
    MUX_2_1 M2(.data0(data2),.data1(data3),.select(select[0]),.out(m2));
    MUX_2_1 M3(.data0(m1),   .data1(m2),   .select(select[1]),.out(f));
    
endmodule

