`timescale 1ns / 1ps

module HA_tb;
reg a,b;
wire s,c;

HA u_HA (
    .a(a ),
    .b(b ),
    .s(s ),
    .c(c )
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
