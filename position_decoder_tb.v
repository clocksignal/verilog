`timescale 1ns / 1ps

module position_decoder_tb;
    reg [1:0] IN;
    wire [3:0] OUT;

    PosDec DUT(.IN(IN), .OUT(OUT));

    integer i;

    initial begin
    for (i = 0;i < 4 ;i = i + 1 ) begin
        IN = i;
        #10;
    end
    #20 $stop();
    end
endmodule