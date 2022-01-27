`timescale 1ns / 1ps

module epb_tb;
reg a,b,c,d;
wire epb;

epb u_epb (
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    .epb(epb )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
end

always@(a or b or c or d) begin
    a <= #10 ~a;
    b <= #20 ~b;
    c <= #40 ~c;
    d <= #80 ~d;
end

initial begin
    #160
    $finish;
end

endmodule