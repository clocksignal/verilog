module PosDec (
    input [1:0] IN,
    output [3:0] OUT
);
    wire A = IN[1];
    wire B = IN[0];

    not(nA, A);
    not(nB, B);

    and(OUT[3], nA, nB);
    and(OUT[2], nA, B);
    and(OUT[1], A, nB);
    and(OUT[0], A, B);
endmodule