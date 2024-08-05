`timescale 1ns / 1ps

module double_dabble_tb;

reg [7:0]IN;
wire [11:0]OUT;

double_dabble UUT1(.IN(IN),.OUT(OUT));

    integer i;
    
    initial begin
    
        for (i=0; i<2**8;i=i+1) begin
            IN = i;
            #10;
        end
        $finish;
    end
    
endmodule

