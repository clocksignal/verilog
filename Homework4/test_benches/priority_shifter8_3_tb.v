`timescale 1ns / 1ps

module priority_shifter8_3_tb;

reg [7:0]IN;
wire [2:0]OUT;
wire IDLE;

priority_shifter8_3 UUT1(.IN(IN),.OUT(OUT),.IDLE(IDLE));

    integer i;
    
    initial begin
    
        for (i=0; i<2**8;i=i+1) begin
            IN = i;
            #10;
        end
        $finish;
    end
    
endmodule
