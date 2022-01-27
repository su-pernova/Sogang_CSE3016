`timescale 1ns / 1ps

module epbc_tb;
reg a,b,c,d,epb;
wire pec;

epbc u_epbc (
    .a(a ),
    .b(b ),
    .c(c ),
    .d(d ),
    .epb(epb ),
    .pec(pec )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
    epb = 1'b0;
end

always@(a or b or c or d or epb) begin
    a <= #10 ~a;
    b <= #20 ~b;
    c <= #40 ~c;
    d <= #80 ~d;
    epb <= #160 ~epb;
end

initial begin
    #320
    $finish;
end

endmodule