`timescale 1ns / 1ps

module mux(
    input x,
    input y,
    input A,
    input B,
    input C,
    input D,
    output E1,
    output E2,
    output E3,
    output E4    
    );

assign E1 = (A&(~x)&(~y));
assign E2 = (B&x&(~y));
assign E3 = (C&(~x)&y);
assign E4 = (D&x&y);

endmodule