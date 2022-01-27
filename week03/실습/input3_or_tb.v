`timescale 1ns / 1ps

module input3_or_tb;

reg a,b,c;
wire d,e;
input3_or u_input3_or (
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    .e(e )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
end

always@(a or b or c) begin
    a <= #100 ~a;
    b <= #200 ~b;
    c <= #300 ~c;
end

initial begin
    #900
    $finish;
end

endmodule
