`timescale 1ns / 1ps

module decoder2_4_tb;

    reg [1:0] IN;
    wire [3:0] OUT;

decoder2_4 UUT (.EN(1),.IN(IN),.OUT(OUT));

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
