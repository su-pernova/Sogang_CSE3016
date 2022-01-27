`timescale 1ns / 1ps

module dmux_tb;
reg x,y,F;
wire A,B,C,D;

dmux u_dmux (
    .x(x ),
    .y(y ),
    .F(F ),
    .A(A ),
    .B(B ),
    .C(C ),
    .D(D )
);

initial begin
    x = 1'b0;
    y = 1'b0;
    F = 1'b0;
end

always@(x or y or F) begin
    x <= #10 ~x;
    y <= #20 ~y;
    F <= #40 ~F;
end

initial begin
    #80
    $finish;
end

endmodule