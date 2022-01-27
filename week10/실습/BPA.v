`timescale 1ns / 1ps

module BPA(
    input Cin,
    
    input A0,
    input A1,
    input A2,
    input A3,

    input B0,
    input B1,
    input B2,
    input B3,

    output C1,
    output C2,
    output C3,
    output C4,

    output S0,
    output S1,
    output S2,
    output S3
    );

assign S0 = (A0^B0)^Cin;
assign C1 = (Cin&(A0^B0)) | (A0&B0);

assign S1 = (A1^B1)^C1;
assign C2 = (C1&(A1^B1)) | (A1&B1);

assign S2 = (A2^B2)^C2;
assign C3 = (C2&(A2^B2)) | (A2&B2);

assign S3 = (A3^B3)^C3;
assign C4 = (C3&(A3^B3)) | (A3&B3);


endmodule
