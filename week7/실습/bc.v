`timescale 1ns / 1ps

module bc(
    input a1,
    input a2,
    input b1,
    input b2,
    output LB,
    output E,
    output RB
    );

assign LB = (a1&&(~b1)) || (a2&&(~b1)&&(~b2)) || (a1&&a2&&(~b2));
assign E = ((~a1)&&(~a2)&&(~b1)&&(~b2)) || ((~a1)&&a2&&(~b1)&&b2) || (a1&&(~a2)&&b1&&(~b2)) || (a1&&a2&&b1&&b2);
assign RB = ((~a1)&&b1) || ((~a1)&&(~a2)&&b2) || ((~a2)&&b1&&b2);

endmodule
