`timescale 1ns / 1ps

module decoder4_16_tb;

    reg [3:0] IN;
    wire [15:0] OUT;

decoder4_16 UUT (.IN(IN),.OUT(OUT));

    integer i;
    initial begin
    
    for(i=0;i<16;i=i+1)
        begin
            IN=i;
            #10;
        end
        
        
    #10 $finish;
    end
endmodule
