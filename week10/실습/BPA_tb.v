`timescale 1ns / 1ps

module BPA_tb;
reg Cin,A0,A1,A2,A3,B0,B1,B2,B3;
wire C1,C2,C3,C4,S0,S1,S2,S3;

BPA u_BPA (
    .Cin(Cin ),
    .A0(A0 ),
    .A1(A1 ),
    .A2(A2 ),
    .A3(A3 ),

    .B0(B0 ),
    .B1(B1 ),
    .B2(B2 ),
    .B3(B3 ),

    .C1(C1 ),
    .C2(C2 ),
    .C3(C3 ),
    .C4(C4 ),

    .S0(S0 ),
    .S1(S1 ),
    .S2(S2 ),
    .S3(S3 )
);

initial begin
    Cin = 1'b0;
    A0 = 1'b0;
    A1 = 1'b0;
    A2 = 1'b0;
    A3 = 1'b0;

    B0 = 1'b0;
    B1 = 1'b0;
    B2 = 1'b0;
    B3 = 1'b0;
end

always@(Cin or A0 or A1 or A2 or A3 or B0 or B1 or B2 or B3) begin
    Cin <= #10 ~Cin;
    A0 <= #20 ~A0;
    A1 <= #40 ~A1;
    A2 <= #80 ~A2;
    A3 <= #160 ~A3;

    B0 <= #320 ~B0;
    B1 <= #640 ~B1;
    B2 <= #1280 ~B2;
    B3 <= #2560 ~B3;
end

initial begin
    #5120
    $finish;
end

endmodule