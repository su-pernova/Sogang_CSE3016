`timescale 1ns / 1ps

module RC_tb;

reg clk,reset;
wire[3:0] out;

RC u_RC(
    .clk(clk ),
    .reset(reset ),
    .out(out )
);

initial clk = 1'b0;
initial reset = 1'b0;


always clk = #20 ~clk;

always@(reset) begin
    reset = #330 ~reset;
    reset = #20 ~reset;
end

initial begin
    #380
    $finish;
end

endmodule