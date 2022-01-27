`timescale 1ns / 1ps

module epbc(
    input a,
    input b,
    input c,
    input d,
    input epb,
    output pec
    );

assign pec = ((a^b)^(c^d)^epb);

endmodule