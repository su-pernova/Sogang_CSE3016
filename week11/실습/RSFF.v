`timescale 1ns / 1ps

module RSFF(
    input clk,
    input S,
    input R,
    input CLR,
    output Q,
    output Qp
);

reg Q;

// falling edge triggered
always @(posedge !clk) begin
    if(CLR) Q<=1'b0;
    else begin
        if((S==1'b0)&&(R==1'b0)) Q<=Q;
        else if((S==1'b0)&&(R==1'b1)) Q<=1'b0;
        else if((S==1'b1)&&(R==1'b0)) Q<=1'b1;
        else if((S==1'b1)&&(R==1'b1)) Q<=1'bx;
    end
end

assign Qp = ~Q;

endmodule