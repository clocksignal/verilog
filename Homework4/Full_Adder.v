//module Full_Adder(
//    input [2:0]IN,
//    output [1:0] OUT
//    );
//    wire C_IN=IN[0]; wire A=IN[1]; wire B=IN[2];
//    wire sum, c_o1, c_o2;
    
//    wire SUM=OUT[0];
//    wire C_OUT=OUT[1];
    
//    Half_Adder UUT1(.IN({A,B}),.OUT({c_o1,sum}));
//    Half_Adder UUT2(.IN({C_IN,sum}),.OUT({c_o2,SUM}));
    
//    xor(C_OUT,c_o1,c_o2);
    
    
//endmodule
