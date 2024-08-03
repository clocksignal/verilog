`timescale 1ns / 1ps

module decipher_tb;
    
//    reg A,B,C,D;
    reg [3:0]IN;
    wire[6:0] OUT;
    
//    character_decoder UUT(.IN(A),.IN(B),.IN(C),.IN(D),.OUT(OUT));
    decipher UUT(.IN(IN),.OUT(OUT));
    integer i;
    
    initial begin
//        A=0;B=0;C=0;D=0;

        
        for(i=0; i<16 ; i=i+1) begin  
            IN=i;
            #10;
        end
        #10 $stop();
    end
    
endmodule
