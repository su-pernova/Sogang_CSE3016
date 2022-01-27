`timescale 1ns / 1ps

module BCD2_tb;
reg Cin,a1,a2,a3,a4,b1,b2,b3,b4;
wire sum1,sum2,sum3,sum4,cout;

BCD2 u_BCD2 (
    .Cin(Cin ),
    .a1(a1 ),
    .a2(a2 ),
    .a3(a3 ),
    .a4(a4 ),

    .b1(b1 ),
    .b2(b2 ),
    .b3(b3 ),
    .b4(b4 ),

    .sum1(sum1 ),
    .sum2(sum2 ),
    .sum3(sum3 ),
    .sum4(sum4 ),

    .cout(cout )
);

initial begin
    Cin = 1'b0;
    a1 = 1'b0;
    a2 = 1'b0;
    a3 = 1'b0;
    a4 = 1'b0;

    b1 = 1'b0;
    b2 = 1'b0;
    b3 = 1'b0;
    b4 = 1'b0;
end

always@(Cin or a1 or a2 or a3 or a4 or b1 or b2 or b3 or b4) begin
    Cin <=#10 ~Cin;
    a1 <= #20 ~a1;
    a2 <= #40 ~a2;
    a3 <= #80 ~a3;
    a4 <= #160 ~a4;

    b1 <= #320 ~b1;
    b2 <= #640 ~b2;
    b3 <= #1280 ~b3;
    b4 <= #2560 ~b4;
end

initial begin
    #5120
    $finish;
end


endmodule