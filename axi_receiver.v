`timescale 1ns / 1ps
module hs_receiver(input valid, clk, rst_n, input [31:0] data, output reg [31:0] out, output ready, output reg got);
reg [1:0] cnt;
assign ready = (cnt == 2'b11);
always @(posedge clk or negedge rst_n) begin
if(!rst_n) begin
out<=32'd0;
got<=1'b0;
cnt<=2'd0;
end
else begin
cnt<= cnt+1;
got<=0;
if(valid && ready) begin
out<=data;
got<=1'b1;
end
end
end
endmodule
