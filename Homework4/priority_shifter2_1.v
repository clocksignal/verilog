module priority_shifter2_1(
    input [1:0] IN,
    output OUT,
    output IDLE
    );
    wire [1:0]OUTm;
    
    buf(OUTm[1],IN[1]);
    and(OUTm[0],IN[0],!IN[1]);
    
    xor(OUT,IN[1]);
    
    nor(IDLE, IN[0],IN[1]);
    
endmodule
