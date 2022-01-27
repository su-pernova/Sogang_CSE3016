`timescale 1ns / 1ps

module mux_tb;
reg x,y,A,B,C,D;
wire E1,E2,E3,E4;

mux u_mux (
    .x(x ),
    .y(y ),
    .A(A ),
    .B(B ),
    .C(C ),
    .D(D ),
    .E1(E1 ),
    .E2(E2 ),
    .E3(E3 ),
    .E4(E4 )
);

initial begin
    x = 1'b0;
    y = 1'b0;
    A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;
end

always@(x or y or A or B or C or D) begin
    x <= #10 ~x;
    y <= #20 ~y;
    A <= #40 ~A;
    B <= #80 ~B;
    C <= #160 ~C;
    D <= #320 ~D;
end

initial begin
    #640
    $finish;
end

endmodule