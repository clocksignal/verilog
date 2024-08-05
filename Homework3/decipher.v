module decipher(
    input [3:0] IN,
    output reg [6:0]OUT
    );
    //GATEWAY
//    wire A=IN[0];
//    wire B=IN[1];
//    wire C=IN[2];
//    wire D=IN[3];
    
//      not(NA,A);
//      not(NB,B);
//      not(NC,C);
//      not(ND,D);
    //GATEWAY
//    a

    //DATA FLOW
//    assign OUT[6]= !A & C | B & D | A & !B & !C & !D;
    //DATA FLOW
    
    //GATEWAY
//      and(a1,NA,C);
//      and(a2,B,D);
//      and(a3,A,NB,NC,ND);
//      or(OUT[6],a1,a2,a3);
    //GATEWAY
//    b

    //DATA FLOW
//    assign OUT[5]= B & D | !A & B & C | A & !B & C;
    //DATA FLOW
    
    //GATEWAY
//      and(b1,B,D);
//      and(b2,NA,B,C);
//      and(b3,A,NB,C);
//      or(OUT[5],b1,b2,b3);
    //GATEWAY
    
//    c
    //DATA FLOW
//    assign OUT[4]= C & D | !A & B & !C;
    //DATA FLOW
    
    //GATEWAY
//      and(c1,C,D);
//      and(c2,NA,B,NC);
//      or(OUT[4],c1,c2);
    //GATEWAY
    
//    d

    //DATA FLOW
//    assign OUT[3]= A & B & C | !A & !B & C | A & !B & !C;
    //DATA FLOW
    
    //GATEWAY
//      and(d1,A,B,C);
//      and(d2,NA,NB,C);
//      and(d3,A,NB,NC);
//      or(OUT[3],d1,d2,d3);
    //GATEWAY
//    e

    //DATA FLOW
//    assign OUT[2]= A | !B & C;
    //DATA FLOW
    
    //GATEWAY
//      buf(e1,A);
//      and(e2,NB,C);
//      or(OUT[2],e1,e2);
    //GATEWAY
//    f

    //DATA FLOW
//    assign OUT[1]= A & B | B & !C | A & !C & !D;
    //DATA FLOW
    
    //GATEWAY
//      and(f1,A,B);
//      and(f2,B,NC);
//      and(f3,A,NC,NC);
//      or(OUT[1],f1,f2,f3);
    //GATEWAY
//    g

    //DATA FLOW
//    assign OUT[0]= !B & !C & !D | A & B & C;
    //DATA FLOW
    
    //GATEWAY
//      and(g1,NB,NC,ND);
//      and(g2,A,B,C);
//      or(OUT[0],g1,g2);
    //GATEWAY

    // BEHAVIORAL
    always @IN
        begin
            case(IN)        //abcdefg
            4'b0000: OUT = 7'b0000001;//0
            4'b0001: OUT = 7'b1001111;//1
            4'b0010: OUT = 7'b0010010;//2
            4'b0011: OUT = 7'b0000110;//3
            4'b0100: OUT = 7'b1001100;//4
            4'b0101: OUT = 7'b0100100;//5
            4'b0110: OUT = 7'b1100000;//6
            4'b0111: OUT = 7'b0001111;//7
            4'b1000: OUT = 7'b0000000;//8
            4'b1001: OUT = 7'b0001100;//9
            4'b1010: OUT = 7'b1110010;//10
            4'b1011: OUT = 7'b1100110;//11
            4'b1100: OUT = 7'b1011100;//12
            4'b1101: OUT = 7'b0110100;//13
            4'b1110: OUT = 7'b1110000;//14
            4'b1111: OUT = 7'b1111111;//15
            endcase
        end
    

endmodule
