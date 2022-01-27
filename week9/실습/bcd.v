`timescale 1ns / 1ps

module dec(
    input A1,
    input A2,
    input A4,
    input A8,
    output B1,
    output B2,
    output B3,
    output B4,
    output B5,
    output B6,
    output B7,
    output B8,
    output B9
    );

assign B1 = A1&(~A2)&(~A4)&(~A8);
assign B2 = (~A1)&A2&(~A4)&(~A8);
assign B3 = A1&A2&(~A4)&(~A8);
assign B4 = (~A1)&(~A2)&A4&(~A8);
assign B5 = A1&(~A2)&A4&(~A8);
assign B6 = (~A1)&A2&A4&(~A8);
assign B7 = A1&A2&A4&(~A8);
assign B8 = (~A1)&(~A2)&(~A4)&A8;
assign B9 = A1&(~A2)&(~A4)&A8;

endmodule