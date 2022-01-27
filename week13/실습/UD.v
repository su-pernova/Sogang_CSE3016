`timescale 1ns / 1ps

module UD(
    input reset,
    input clk,
    input up,
    output[3:0] out,
    output[6:0] DS
);

reg[3:0] out;
reg[6:0] DS;

always @(posedge clk) begin

    if(reset) begin
        out[3] <= 1'b0;
        out[2] <= 1'b0;
        out[1] <= 1'b0;
        out[0] <= 1'b0;
        DS <= 1'b0;
    end

    else begin
        if((up == 1'b1)) begin
            out = out+1;
            DS[0] <= 1'b0;
            DS[1] <= 1'b1;
            DS[2] <= 1'b1;
            DS[3] <= 1'b1;
            DS[4] <= 1'b1;
            DS[5] <= 1'b1;
            DS[6] <= 1'b0;
        end
        if((up == 1'b0)) begin
            out = out-1;
            DS[0] <= 1'b0;
            DS[1] <= 1'b1;
            DS[2] <= 1'b1;
            DS[3] <= 1'b1;
            DS[4] <= 1'b1;
            DS[5] <= 1'b0;
            DS[6] <= 1'b1;
        end
    end

end


endmodule