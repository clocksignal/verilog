module bit01_comparator(
    input [1:0]IN,
    output [2:0]OUT
    );
    wire A = IN[0];
    wire B = IN[1];
    
//      =
    wire temp;
    xor(temp,A,B);
    nor(OUT[1],temp);
    
//      >
    and(OUT[2],B,!A);
//      <
    and(OUT[0],!B,A);
    
endmodule
