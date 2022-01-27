`timescale 1ns / 1ps

module input4_and_tb;

reg a,b,c,d;
wire e,f,g;
input4_and u_input4_and (
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    .e(e ),
    .f(f ),
    .g(g )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
end

always@(a or b or c or d) begin
    a <= #2 ~a;
    b <= #3 ~b;
    c <= #5 ~c;
    d <= #7 ~d;
end

initial begin
    #56
    $finish;
end

endmodule
