`timescale 1ns / 1ps

module BF_tb;
reg a,b,c;
wire out1,out2,out3,out4;

BF u_BF (
    .a(a ),
    .b(b ),
    .c(c ),
    .out1(out1 ),
    .out2(out2 ),
    .out3(out3 ),
    .out4(out4 )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
end

always@(a or b) begin
    a <= #20 ~a;
    b <= #40 ~b;
    c <= #80 ~b;
end

initial begin
    #160
    $finish;
end

endmodule