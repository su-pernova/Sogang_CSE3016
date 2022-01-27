`timescale 1ns / 1ps

module conv(
    input a,
    input b,
    input c,
    input d,
    output y1,
    output y2,
    output y3,
    output y4
    );
    
assign y1 = (b&&c) || (b&&d) || a;
assign y2 = a || (b&&~d) || (b&&c);
assign y3 = a || (~b&&c) || (b&&~c&&d);
assign y4 = d;
    
endmodule