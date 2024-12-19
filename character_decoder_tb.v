`timescale 1ns / 1ps

module character_decoder_tb;
    reg [3:0] IN;
    wire [6:0] OUT;

    CharDec DUT(.IN(IN), .OUT(OUT));

    integer i;
    
    initial begin
    for (i = 0; i < 16; i = i + 1)   begin
      IN = i;
      #10;
    end
    
    #20 $stop;
    end
endmodule //character_decoder_tb;
