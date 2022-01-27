`timescale 1ns / 1ps

module RSFF_tb;
reg clk, S, R, CLR;
wire Q, Qp;

RSFF u_RSFF(
    .clk(clk ),
    .S(S ),
    .R(R ),
    .CLR(CLR ),
    .Q(Q ),
    .Qp(Qp ) 
);

initial clk = 1'b0;
initial CLR = 1'b1;
initial S = 1'b0;
initial R = 1'b0;

always clk = #50 ~clk;

always@(CLR) begin
    CLR = #125 ~CLR;
end

always@(S) begin
    S = #175 ~S;
    S = #50 ~S;
end

always@(R) begin
    R = #375 ~R;
    R = #50 ~R;
end

always@(R) begin
    R = #575 ~R;
    R = #50 ~R;
end

always@(S) begin
    S = #675 ~S;
    S = #50 ~S;
end

always@(R) begin
    R = #675 ~R;
    R = #50 ~R;
end

initial begin
    #800
    $finish;
end

endmodule