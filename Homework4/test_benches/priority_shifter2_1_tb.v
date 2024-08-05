`timescale 1ns / 1ps

module priority_shifter2_1_tb;

reg [1:0]IN;
wire OUT;
priority_shifter2_1 UUT1(.IN(IN),.OUT(OUT));

    integer i;
    
    initial begin
    
        for (i=0; i<4;i=i+1) begin
            IN = i;
            #10;
        end
        $finish;
    end
    
endmodule
