`timescale 1ns / 1ps

module decoder1_2_tb;

    reg IN;
    wire [1:0] OUT;

decoder1_2 UUT (.IN(IN),.OUT(OUT));

    integer i;
    initial begin
    
    for(i=0;i<2;i=i+1)
        begin
            IN=i;
            #10;
        end
        
        
    #10 $finish;
    end
endmodule
