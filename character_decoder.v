module CharDec (
    input [3:0] IN,
    output reg [6:0] OUT
);

    wire A = IN[0];
    wire B = IN[1];
    wire C = IN[2];
    wire D = IN[3]; 

// gate logic: 
//     not (nA, A);
//     not (nB, B);
//     not (nC, C);
//     not (nD, D);

// //a:
// and(a_1, nD, nC, nB, A);
// and(a_2, C, nA);
// and(a_3, D, B);
// or (OUT[6], a_1, a_2, a_3);

// //b:
// and(b_1, C, nB, A);
// and(b_2, C, B, nA);
// and(b_3, D, B);
// or(OUT[5], b_1, b_2, b_3);

// //c:
// and(c_1, D, C);
// and(c_2, nC, B, nA);
// or(OUT[4], c_1, c_2);

// //d:
// and(d_1, C, nB, nA);
// and(d_2, C, B, A);
// and(d_3, nC, nB, A);
// or(OUT[3], d_1, d_2, d_3);

// //e:
// buf(e_1, A);  
// and(e_2, C, nB);
// or(OUT[2], e_1, e_2);

// //f:
// and(f_1, nD, nC, A);
// and(f_2, B, A);
// and(f_3, nC, B);
// or(OUT[1], f_1, f_2, f_3);

// //g:
// and(g_1, nD, nC, nB);
// and(g_2, C, B, A);
// or(OUT[0], g_1, g_2);

// //dataflow:
// assign OUT[6] = ~D & ~C & ~B & A | C & A | D & B; //a
// assign OUT[5] = C & ~B & A | C & B & ~A | D & B;  //b
// assign OUT[4] = C & D | ~C & B & ~A;  //c
// assign OUT[3] = C & ~B & ~A | C & B & A | ~C & ~B & A;  //d
// assign OUT[2] = A | C & ~B;  //e
// assign OUT[1] = ~D & ~C & A | B & A | ~C & B;  //f
// assign OUT[0] = ~D & ~C & ~B |C & B & A;  //g

//behavioral
always @(IN) begin
   case (IN)
   4'b0000 : OUT = 7'b0000001;
   4'b0001 : OUT = 7'b1001111;
   4'b0010 : OUT = 7'b0010010;
   4'b0011 : OUT = 7'b0000110;
   4'b0100 : OUT = 7'b1001100;
   4'b0101 : OUT = 7'b0100100;
   4'b0110 : OUT = 7'b1100000;
   4'b0111 : OUT = 7'b0001111;
   4'b1000 : OUT = 7'b0000000;
   4'b1001 : OUT = 7'b0001100;
   4'b1010 : OUT = 7'b1110010;
   4'b1011 : OUT = 7'b1100110;
   4'b1100 : OUT = 7'b1011100;
   4'b1101 : OUT = 7'b0110100;
   4'b1110 : OUT = 7'b1110000;
   4'b1111 : OUT = 7'b1111111;
   default : OUT = 7'b0000000;
   endcase 
end
endmodule //CharDec