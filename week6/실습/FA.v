`timescale 1ns / 1ps

module FA(
    input a,
    input b,
    input c_in,
    output c_out,
    output s    
    );
    
assign s = (a^b)^c_in;
assign c_out = (c_in && (a^b)) || (a&&b);
    
endmodule