module decoder1_2(
    input IN,
    output [1:0]OUT
    );
    
    wire A = IN;
    
    nor(nA,A);
    
//    x1
    and(OUT[1], A);
    
//    x0
    and(OUT[0], nA);

endmodule