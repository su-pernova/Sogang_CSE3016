`timescale 1ns / 1ps

module input3_and(
    input a,
    input b,
    input c,
    output d,
    output e 
    );
    
assign d = a&&b;
assign e = c&&d;

endmodule
