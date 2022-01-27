`timescale 1ns / 1ps

module HS_tb;
reg a,b;
wire d,borrow;

HS u_HS (
    .a(a ),
    .b(b ),
    .d(d ),
    .borrow(borrow )
);

initial begin
    a = 1'b0;
    b = 1'b0;
end

always@(a or b) begin
    a <= #20 ~a;
    b <= #40 ~b;
end

initial begin
    #80
    $finish;
end

endmodule
