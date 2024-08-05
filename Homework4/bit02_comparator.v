module bit02_comparator(
    input [3:0] IN,
    output[2:0] OUT);
    
//    wire LT;
//    wire ET;
//    wire GT;
    wire [2:0]tempGT;
    wire [1:0]tempET;
    wire [2:0]tempLT;
    
    bit01_comparator UUT1(.IN({IN[3],IN[1]}),.OUT({tempGT[1],tempET[1],tempLT[1]}));
    bit01_comparator UUT2(.IN({IN[2],IN[0]}),.OUT({tempGT[0],tempET[0],tempLT[0]}));
    
    //  =
    and(OUT[1],tempET[0],tempET[1]);
    // >
    and(tempGT[2],tempET[1],tempGT[0]);
    xor(OUT[2],tempGT[2],tempGT[1]);
    // <
    and(tempLT[2],tempET[1],tempLT[0]);
    xor(OUT[0],tempLT[2],tempLT[1]);
    
endmodule
