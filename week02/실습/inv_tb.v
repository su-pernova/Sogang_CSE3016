`timescale 1ns / 1ps

module inv_tb;

reg aa;
wire y;

inv u_inv (
.a (aa ),
.y (y ) );

initial aa = 1'b0;
always aa = #100 ~aa;

initial begin
    #1000
    $finish;
end

endmodule
