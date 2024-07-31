module decoder(
    input [1:0] IN,
    output [3:0]OUT
    );
    wire A = IN[1];
    wire B = IN[0];
    

    
//    x0
    assign OUT[3]= !A & !B;

//    x1
    assign OUT[2]= !A & B;

//    x2
    assign OUT[1]= A & !B;
    
//    x3
    assign OUT[0]= A & B;

endmodule