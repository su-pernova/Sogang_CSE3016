`timescale 1ns / 1ps

module FS_tb;
reg a,b,b_n1;
wire d,b_n;

FS u_FS (
    .a(a ),
    .b(b ),
    .b_n1(b_n1 ),
    .d(d ),
    .b_n(b_n )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    b_n1 = 1'b0;
end

always@(a or b or b_n1) begin
    a <= #20 ~a;
    b <= #40 ~b;
    b_n1 <= #80 ~b_n1;
end

initial begin
    #160
    $finish;
end

endmodule
