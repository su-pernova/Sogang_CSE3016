`timescale 1ns / 1ps

module ME(
    input clk,
    input reset,
    input x,
    output z,
    output[3:0] seq
);

reg z;
reg[3:0] seq;
reg[3:0] target = 5'b1101;

always @(posedge clk) begin
    if(reset) begin
        seq[3] <= 1'b0;
        seq[2] <= 1'b0;
        seq[1] <= 1'b0;
        seq[0] <= 1'b0;
        z <= 1'b0;
    end

    else begin
        seq[3] = seq[2];
        seq[2] = seq[1];
        seq[1] = seq[0];
        seq[0] = x;
        if(seq == target) z = 1'b1;
        else z = 1'b0;
    end
    
    
end

endmodule