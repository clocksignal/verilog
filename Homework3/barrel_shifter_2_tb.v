`timescale 1ns / 1ps

module barrel_shifter_2_tb;
    reg [3:0]x;
    reg [1:0]select;
    wire [3:0]y;
    barrel_shifter_2 UUT(.x(x),.select(select),.y(y));
    
    initial begin
            select=0; x=1;
        #10 select=1;
        #10 select=2;
        #10 select=3;
        
        #10 select=0; x=2;
        #10 select=1;
        #10 select=2;
        #10 select=3;
        
        #10 select=0; x=4;
        #10 select=1;
        #10 select=2;
        #10 select=3;
        
        #10 select=0; x=8;
        #10 select=1;
        #10 select=2;
        #10 select=3;
        #10 $finish;
    end
endmodule
