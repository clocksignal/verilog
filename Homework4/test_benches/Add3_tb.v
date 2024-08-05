`timescale 1ns / 1ps

module Add3_tb;

reg [3:0]IN;
wire [3:0]OUT;

Add3 UUT1(.A(IN),.S(OUT));

    integer i;
    
    initial begin
    
        for (i=0; i<16;i=i+1) begin
            IN = i;
            #10;
        end
        $finish;
    end
    
endmodule
