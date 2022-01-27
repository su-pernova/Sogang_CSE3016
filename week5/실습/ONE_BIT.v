`timescale 1ns / 1ps

module ONE_BIT(
    input a,
    input b,
    output equal,
    output not_equal,
    output left,
    output right
    );
    
assign equal = ~(a^b);
assign not_equal = a^b;
assign left = a&&(~b);
assign right = (~a)&&b;
    
endmodule