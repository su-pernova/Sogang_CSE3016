`timescale 1ns / 1ps

module BPS(
    input bin,
    
    input A0,
    input A1,
    input A2,
    input A3,

    input B0,
    input B1,
    input B2,
    input B3,

    output b1,
    output b2,
    output b3,
    output b4,

    output D0,
    output D1,
    output D2,
    output D3
    );

assign D0 = (A0^B0)^bin;
assign b1 = ((~(A0^B0))&bin) | ((~A0)&B0);

assign D1 = (A1^B1)^b1;
assign b2 = ((~(A1^B1))&b1) | ((~A1)&B1);

assign D2 = (A2^B2)^b2;
assign b3 = ((~(A2^B2))&b2) | ((~A2)&B2);

assign D3 = (A3^B3)^b3;
assign b4 = ((~(A3^B3))&b3) | ((~A3)&B3);


endmodule
