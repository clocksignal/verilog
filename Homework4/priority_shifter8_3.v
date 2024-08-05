module priority_shifter8_3(
    input [7:0]IN,
    output[2:0]OUT,
    output IDLE
    );
    wire [7:0]OUTm;
    
    buf(OUTm[7],IN[7]);
    
    and(OUTm[6],!IN[7],IN[6]);
    and(OUTm[5],!IN[7],!IN[6],IN[5]);
    and(OUTm[4],!IN[7],!IN[6],!IN[5],IN[4]);
    and(OUTm[3],!IN[7],!IN[6],!IN[5],!IN[4],IN[3]);
    and(OUTm[2],!IN[7],!IN[6],!IN[5],!IN[4],!IN[3],IN[2]);
    and(OUTm[1],!IN[7],!IN[6],!IN[5],!IN[4],!IN[3],!IN[2],IN[1]);
    and(OUTm[0],!IN[7],!IN[6],!IN[5],!IN[4],!IN[3],!IN[2],!IN[1],IN[0]);
    
    or(OUT[2],OUTm[4],OUTm[5],OUTm[6],OUTm[7]);
    or(OUT[1],OUTm[2],OUTm[3],OUTm[6],OUTm[7]);
    or(OUT[0],OUTm[1],OUTm[3],OUTm[5],OUTm[7]);
    
    nor(IDLE,IN[7],IN[6],IN[5],IN[4],IN[3],IN[2],IN[1],IN[0]);
    
endmodule
