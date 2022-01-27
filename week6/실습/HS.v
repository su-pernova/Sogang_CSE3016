`timescale 1ns / 1ps

module HS(
    input a,
    input b,
    output d,
    output borrow
    );
    
assign d = a^b;
assign borrow = (~a)&&b;
    
endmodule