`timescale 1ns / 1ps

module BF(
    input a,
    input b,
    input c,
    output out1,
    output out2,
    output out3,
    output out4
    );

assign out1 = ((~a)||(~b))&&(~c);
assign out2 = ~((a&&b)||c);
assign out3 = ((~a)&&(~b))||(~c);
assign out4 = ~((a||b)&&c);

endmodule
