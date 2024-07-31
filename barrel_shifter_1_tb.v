`timescale 1ns / 1ps

module barrel_shifter_1_tb;
    reg [3:0]x,ctr;
    wire[3:0]y;
    
//    MUX_2_1 UUT1(.ctr(ctr),.a(x[2]),.b(x[3]),.out(y[3]));
//    MUX_2_1 UUT2(.ctr(ctr),.a(x[1]),.b(x[2]),.out(y[2]));
//    MUX_2_1 UUT3(.ctr(ctr),.a(x[0]),.b(x[1]),.out(y[1]));
//    MUX_2_1 UUT4(.ctr(ctr),.a(x[3]),.b(x[0]),.out(y[0]));
    barrel_shifter_1 UUT(.select(ctr),.a(x),.out(y));
    
    initial begin
    
   
            ctr=0; x[3]=1; x[2]=0; x[1]=1; x[0]=0;
        #10 ctr=0;
        #10 ctr=1;
        #10 ctr=0;
        #10 ctr=0; x[3]=0; x[2]=1; x[1]=0; x[0]=1;
        #10 ctr=1;
        
        #10 $finish;
    
    end;
endmodule
