`timescale 1ns / 1ps

module conv_tb;
reg a,b,c,d;
wire y1,y2,y3,y4;

conv u_conv (
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    .y1(y1 ),
    .y2(y2 ),
    .y3(y3 ),
    .y4(y4 )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
end

always@(a or b or c or d) begin
    a <= #20 ~a;
    b <= #40 ~b;
    c <= #80 ~c;
    d <= #160 ~d;
end

initial begin
    #320
    $finish;
end

endmodule
