`timescale 1ns / 1ps

module DFF(
    input clk,
    input D,
    input CLR,
    output Q,
    output Qp
);

reg Q;

// falling edge triggered
always @(posedge !clk) begin
    if(CLR) Q<=1'b0;
    else begin
        if((D==1'b0)) Q<=1'b0;
        else if((D==1'b1)) Q<=1'b1;
    end
end

assign Qp = ~Q;

endmodule