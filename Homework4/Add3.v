module Add3(
    input [3:0]A,
    output[3:0]S
    );
    assign S[0] = A[0] & !A[2] & !A[3] || !A[0] & A[1] & A[2] & !A[3] || !A[0] & !A[1] & !A[2] & A[3];
    assign S[1] = A[0] & A[1] & !A[3] || A[1] & !A[2] & !A[3] || !A[0] & !A[1] & !A[2] & A[3];
    
    assign S[2] =  !A[0] & !A[1] & A[2] & !A[3] || A[0] & !A[1] & !A[2] & A[3];
    assign S[3] = A[0] & A[2] & !A[3] || A[1] & A[2] & !A[3] || !A[1] & !A[2] & A[3];
    
   
    
endmodule
