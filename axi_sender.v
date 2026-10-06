`timescale 1ns / 1ps
module hs_sender(input clk, rst_n, ready, start, input [31:0] din, output reg valid, output reg[31:0] data);
always@(posedge clk or negedge rst_n) begin
if(!rst_n) begin
valid<=1'b0;
data<=32'd0;
end
else if(!valid && start) begin
valid<=1'b1;
data<=din;
end
else if(ready && valid)
valid<=1'b0;
end
endmodule
