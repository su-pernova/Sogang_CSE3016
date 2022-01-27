`timescale 1ns / 1ps

module NAND(
    input a,
    input b,
    input c,
    input d,
    output e,
    output f,
    output g
    );
    
assign e = ~(a&&b);
assign f = ~(c&&e);
assign g = ~(d&&f);
    
endmodule
