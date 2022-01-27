`timescale 1ns / 1ps

module SR_tb;

reg clk,reset,x;
wire[3:0] out;

SR u_SR(
    .clk(clk ),
    .reset(reset ),
    .x(x ),
    .out(out )
);

initial clk = 1'b0;
initial reset = 1'b1;
initial x = 1'b0;


always clk = #20 ~clk;

always@(reset) begin
    reset = #30 ~reset;
end

always@(x) begin
    x = #50 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
    x = #20 ~x;
    x = #20 ~x;
end

initial begin
    #380
    $finish;
end

endmodule