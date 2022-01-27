`timescale 1ns / 1ps

module ONE_BIT_tb;
reg a,b;
wire equal,not_equal,left,right;

ONE_BIT u_ONE_BIT (
    .a(a ),
    .b(b ),
    .equal(equal ),
    .not_equal(not_equal ),
    .left(left ),
    .right(right )
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