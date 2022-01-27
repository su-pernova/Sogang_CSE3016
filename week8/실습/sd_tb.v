`timescale 1ns / 1ps

module sd_tb;
reg w,x,y,z;
wire a,b,c,d,e,f,g,dp,digit;

sd u_sd (
    .w(w ),
    .x(x ),
    .y(y ),
    .z(z ),
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    .e(e ),
    .f(f ),
    .g(g ),
    .dp(dp ),
    .digit(digit )
);

initial begin
    w = 1'b0;
    x = 1'b0;
    y = 1'b0;
    z = 1'b0;
end

always@(w or x or y or z) begin
    w <= #10 ~w;
    x <= #20 ~x;
    y <= #40 ~y;
    z <= #80 ~z;
end

initial begin
    #160
    $finish;
end

endmodule