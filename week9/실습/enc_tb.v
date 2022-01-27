`timescale 1ns / 1ps

module enc_tb;
reg A,B,C,D;
wire E0,E1;

enc u_enc (
    .A(A ),
    .B(B ),
    .C(C ),
    .D(D ),
    .E0(E0 ),
    .E1(E1 )
);

initial begin
    A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;
end

always@(A or B or C or D) begin
    A <= #10 ~A;
    B <= #20 ~B;
    C <= #40 ~C;
    D <= #80 ~D;
end

initial begin
    #160
    $finish;
end

endmodule