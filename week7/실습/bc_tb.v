`timescale 1ns / 1ps

module bc_tb;
reg a1,a2,b1,b2;
wire LB,E,RB;

bc u_bc (
    .a1(a1 ),
    .a2(a2 ),
    .b1(b1 ),
    .b2(b2 ),
    .LB(LB ),
    .E(E ),
    .RB(RB )
);

initial begin
    a1 = 1'b0;
    a2 = 1'b0;
    b1 = 1'b0;
    b2 = 1'b0;
end

always@(a1 or a2 or b1 or b2) begin
    a1 <= #10 ~a1;
    a2 <= #20 ~a2;
    b1 <= #40 ~b1;
    b2 <= #80 ~b2;
end

initial begin
    #160
    $finish;
end

endmodule