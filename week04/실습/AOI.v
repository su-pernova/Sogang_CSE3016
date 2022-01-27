`timescale 1ns / 1ps

module AOI(
    input a,
    input b,
    input c,
    input d,
    output e,
    output f,
    output g
    );
    
assign e = a&&b;
assign f = c&&d;
assign g = ~(e||f);
    
endmodule
