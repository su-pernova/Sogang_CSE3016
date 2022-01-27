`timescale 1ns / 1ps

module UD_tb;

reg clk,reset,up;
wire[3:0] out;
wire[6:0] DS;

UD u_UD(
    .clk(clk ),
    .reset(reset ),
    .up(up ),
    .out(out ),
    .DS(DS )
);

initial clk = 1'b0;
initial reset = 1'b1;
initial up = 1'b0;


always clk = #20 ~clk;

always@(reset) begin
    reset = #30 ~reset;
end

always@(up) begin
    up = #50 ~up;
    up = #20 ~up;
    up = #20 ~up;
    up = #20 ~up;
    up = #20 ~up;
    up = #20 ~up;
    up = #20 ~up;
    up = #20 ~up;
    up = #20 ~up;
    up = #20 ~up;
end

initial begin
    #420
    $finish;
end

endmodule