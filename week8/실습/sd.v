`timescale 1ns / 1ps

module sd(
    input w,
    input x,
    input y,
    input z,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output dp,
    output digit
    );

assign a = ((~x)&&(~z)) || ((~w)&&y) || (x&&y) || (w&&(~z)) || ((~w)&&x&&z) || (w&&(~x)&&(~y));
assign b = ((~w)&&(~x)) || ((~x)&&(~z)) || ((~w)&&(~y)&&(~z)) || ((~w)&&y&&z) || (w&&(~y)&&z);
assign c = ((~w)&&(~y)) || ((~w)&&z) || ((~y)&&z) || ((~w)&&x) || (w&&(~x));
assign d = ((~w)&&(~x)&&(~z)) || ((~x)&&y&z) || (x&&(~y)&&z) || (x&&y&&(~z)) || (w&&(~y)&&(~z));
assign e = ((~x)&&(~z)) || (y&&(~z)) || (w&&y) || (w&&x);
assign f = ((~y)&&(~z)) || (x&&(~z)) || (w&&(~x)) || (w&&y) || ((~w)&&x&&(~y));
assign g = ((~x)&&y) || (y&&(~z)) || (w&&(~x)) || (w&&z) || ((~w)&&x&(~y));

assign dp = 1;
assign digit = a || b || c || d || e || f || g;

endmodule
