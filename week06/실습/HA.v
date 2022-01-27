`timescale 1ns / 1ps

module HA(
    input a,
    input b,
    output s,
    output c
    );
    
assign s = a^b;
assign c = a&&b;
    
endmodule