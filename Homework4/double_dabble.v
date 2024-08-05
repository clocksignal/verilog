module double_dabble(
    input [7:0]IN,
    output [11:0]OUT
    );
    wire Zero=0;
    wire [3:0] On;
    Add3 one(.A({0,IN[7],IN[6],IN[5]}),.S({On[3],On[2],On[1],On[0]}));
    wire [3:0] Tw;
    Add3 two(.A({On[2],On[1],On[0],IN[4]}),.S({Tw[3],Tw[2],Tw[1],Tw[0]}));
    wire [3:0] Th;
    Add3 thr(.A({Tw[2],Tw[1],Tw[0],IN[3]}),.S({Th[3],Th[2],Th[1],Th[0]}));
    
    wire [3:0] Fr;
    Add3 four(.A({Th[2],Th[1],Th[0],IN[2]}),.S({Fr[3],Fr[2],Fr[1],Fr[0]}));
    
    Add3 five(.A({Fr[2],Fr[1],Fr[0],IN[1]}),.S({OUT[4],OUT[3],OUT[2],OUT[1]}));
    assign OUT[0] = IN[0];
    
    wire [2:0] Six;
    
    Add3 six(.A({Zero,On[3],Tw[3],Th[3]}),.S({OUT[9],Six[2],Six[1],Six[0]}));
    assign OUT[10]=Zero;
    assign OUT[11]=Zero;
    Add3 seven(.A({Six[2],Six[1],Six[0],Fr[3]}),.S({OUT[8],OUT[7],OUT[6],OUT[5]}));
    
endmodule
