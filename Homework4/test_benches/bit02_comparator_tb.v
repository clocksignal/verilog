`timescale 1ns / 1ps

module bit02_comparator_tb;

    reg [3:0] IN;
    wire LT;
    wire ET;
    wire GT;
    bit02_comparator UUT1(.IN(IN),.OUT({GT,ET,LT}));
    
    integer i;
    
    initial begin
    
        for (i=0; i<16;i=i+1) begin
            IN = i;
            #10;
        end
        $finish;
    end
    
    
endmodule
