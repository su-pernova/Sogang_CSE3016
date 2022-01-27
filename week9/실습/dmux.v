`timescale 1ns / 1ps

module dmux(
    input x,
    input y,
    input F,
    output A,
    output B,
    output C,
    output D
    );

assign A = (~x)&(~y)&F;
assign B = (~x)&y&F;
assign C = x&(~y)&F;
assign D = x&y&F;

endmodule