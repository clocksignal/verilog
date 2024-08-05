module decoder2_4(
    input EN,
    input [1:0] IN,
    output [3:0]OUT
    );
    
    wire A = IN[1];
    wire B = IN[0];
    
    nor(nA,A);
    nor(nB,B);
    
//    x3
    and(OUT[3], A,B,EN);

//    x2
    and(OUT[2], A,!B,EN);

//    x1
    and(OUT[1], !A,B,EN);
    
//    x0
    and(OUT[0], !A,!B, EN);

endmodule