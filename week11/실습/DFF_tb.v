`timescale 1ns / 1ps

module DFF_tb;
reg clk, D, CLR;
wire Q, Qp;

DFF u_DFF(
    .clk(clk ),
    .D(D ),
    .CLR(CLR ),
    .Q(Q ),
    .Qp(Qp ) 
);

initial clk = 1'b0;
initial CLR = 1'b1;
initial D = 1'b0;

always clk = #50 ~clk;

always@(CLR) begin
    CLR = #125 ~CLR;
end

always@(D) begin
    D = #375 ~D;
    D = #50 ~D;
end

always@(D) begin
    D = #575 ~D;
    D = #50 ~D;
end

always@(D) begin
    D = #675 ~D;
    D = #50 ~D;
end

initial begin
    #800
    $finish;
end

endmodule