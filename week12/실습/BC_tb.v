`timescale 1ns / 1ps

module BC_tb;

reg clk,reset,x;
wire [1:0]out,z;

BC u_BC(
    .clk(clk ),
    .reset(reset ),
    .x(x ),
    .out(out ),
    .z(z )

);

initial clk = 1'b0;
initial reset = 1'b1;
initial x = 1'b0;

always clk = #20 ~clk;

always@(reset) begin
    reset = #50 ~reset;
end

always@(x) begin
    x = #110 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
    x = #60 ~x;
    x = #20 ~x;
end

initial begin
    #380
    $finish;
end

endmodule