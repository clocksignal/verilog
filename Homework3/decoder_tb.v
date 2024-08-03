`timescale 1ns / 1ps

module decoder_tb;
    reg [1:0] IN;
    wire [3:0] OUT;

decoder UUT (.IN(IN),.OUT(OUT));

    integer i;
    initial begin
    
    for(i=0;i<4;i=i+1)
        begin
            IN=i;
            #10;
        end
        
        
    #10 $finish;
    end
endmodule
