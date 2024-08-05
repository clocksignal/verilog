`timescale 1ns / 1ps

module bit03_comparator_tb;

    reg [5:0] IN;
    wire LT;
    wire ET;
    wire GT;
    bit03_comparator UUT1(.IN(IN),.OUT({GT,ET,LT}));
    
    integer i;
    
    initial begin
    
        for (i=0; i<65;i=i+1) begin
            IN = i;
            #10;
        end
        $finish;
    end
    
    
endmodule
