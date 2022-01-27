`timescale 1ns / 1ps

module BPS_tb;
reg bin,A0,A1,A2,A3,B0,B1,B2,B3;
wire b1,b2,b3,b4,D0,D1,D2,D3;

BPS u_BPS (
    .A0(A0 ),
    .A1(A1 ),
    .A2(A2 ),
    .A3(A3 ),

    .B0(B0 ),
    .B1(B1 ),
    .B2(B2 ),
    .B3(B3 ),

    .bin(bin ),
    .b1(b1 ),
    .b2(b2 ),
    .b3(b3 ),
    .b4(b4 ),

    .D0(D0 ),
    .D1(D1 ),
    .D2(D2 ),
    .D3(D3 )
);

initial begin
    bin = 1'b0;
    A0 = 1'b0;
    A1 = 1'b0;
    A2 = 1'b0;
    A3 = 1'b0;

    B0 = 1'b0;
    B1 = 1'b0;
    B2 = 1'b0;
    B3 = 1'b0;
end

always@(bin or A0 or A1 or A2 or A3 or B0 or B1 or B2 or B3) begin
    bin = #10 ~bin;
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