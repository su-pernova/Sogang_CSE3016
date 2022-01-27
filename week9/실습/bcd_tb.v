`timescale 1ns / 1ps

module dec_tb;
reg A1,A2,A4,A8;
wire B1,B2,B3,B4,B5,B6,B7,B8,B9;

dec u_dec (
    .A1(A1 ),
    .A2(A2 ),
    .A4(A4 ),
    .A8(A8 ),
    .B1(B1 ),
    .B2(B2 ),
    .B3(B3 ),
    .B4(B4 ),
    .B5(B5 ),
    .B6(B6 ),
    .B7(B7 ),
    .B8(B8 ),
    .B9(B9 )
);

initial begin
    A1 = 1'b0;
    A2 = 1'b0;
    A4 = 1'b0;
    A8 = 1'b0;
end

always@(A1 or A2 or A4 or A8) begin
    A1 <= #10 ~A1;
    A2 <= #20 ~A2;
    A4 <= #40 ~A4;
    A8 <= #80 ~A8;
end

initial begin
    #160
    $finish;
end

endmodule