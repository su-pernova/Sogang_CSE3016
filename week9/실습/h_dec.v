`timescale 1ns / 1ps

module h_dec(
    input A,
    input B,
    output D0,
    output D1,
    output D2,
    output D3
    );

assign D0 = (~A) & (~B);
assign D1 = B & (~A);
assign D2 = A & (~B);
assign D3 = A & B;

endmodule