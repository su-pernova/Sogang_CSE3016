`timescale 1ns / 1ps

module input4_and(
    input a,
    input b,
    input c,
    input d,
    output e,
    output f,
    output g
    );
    
assign e = a&&b;
assign f = e&&c;
assign g = f&&d;

endmodule
