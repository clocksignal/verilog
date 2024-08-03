`timescale 1ns / 1ps

module MUX4_1_tb;
    reg [3:0]data;
    reg [1:0]select;
    wire f;
    
    MUX4_1 UUT(.data(data),.select(select),.f(f));
    
    initial begin
        data=0; select=0;
        #10 data=1;
        #10 select=1;
        #10 select=2;
        #10 data=2;
        #10 select=1;
        #10 select=2;
        #10 data=4; select = 1;
        #10 select = 2; 
        #10 data=8; select = 1;
        #10 select = 2;
        #10 $finish;
    end
    
endmodule
