`timescale 1ns / 1ps

module DC(
    input reset,
    input clk,
    input x,
    output z,
    output [3:0]out
);

reg [3:0]out;
reg z;

always @(posedge !clk) begin
    if(reset) begin
        out[0] = 1'b0;
        out[1] = 1'b0;
        out[2] = 1'b0;
        out[3] = 1'b0;
        z = 1'b0;
    end
    else begin
        if((x == 1'b1)) begin
            if((out[0] == 1'b1)) begin
                out[0] = (~out[0]);
                out[1] = (~out[1]);
            end
            else out[0] = (~out[0]);
            
            if((~out[0]) && (~out[1]) && (~out[2])) out[2] = 1'b1;
            
            else if ((~out[0]) && (~out[1]) && out[2]) begin
                out[2] = 1'b0;
                out[3] = 1'b1;
            end
            
            if((out[3] && (~out[2]) && out[1] && (~out[0]))) begin 
                z = 1'b1;
                out[0] = 1'b0;
                out[1] = 1'b0;
                out[2] = 1'b0;
                out[3] = 1'b0;
            end
        end
    end
end

endmodule