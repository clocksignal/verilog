module bit01_comparator_tb;
    reg [1:0] IN;
    wire LT;
    wire ET;
    wire GT;
    bit01_comparator UUT1(.IN(IN),.OUT({GT,ET,LT}));
    
    integer i;
    
    initial begin
    
        for (i=0; i<4;i=i+1) begin
            IN = i;
            #10;
        end
        $finish;
    end
    
    
endmodule
