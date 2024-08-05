module decoder4_16(
    input [3:0] IN,
    output [15:0] OUT
    );
    wire [3:0] A;
    decoder2_4 UUT1(.EN(1),.IN({IN[3],IN[2]}),.OUT({A}));
    
    decoder2_4 sub1(.EN(A[0]),.IN({IN[1],IN[0]}),.OUT(OUT[3:0]));
    decoder2_4 sub2(.EN(A[1]),.IN({IN[1],IN[0]}),.OUT(OUT[7:4]));
    decoder2_4 sub3(.EN(A[2]),.IN({IN[1],IN[0]}),.OUT(OUT[11:8]));
    decoder2_4 sub4(.EN(A[3]),.IN({IN[1],IN[0]}),.OUT(OUT[15:12]));
endmodule
