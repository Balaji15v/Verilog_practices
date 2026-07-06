module counter #(parameter N=10,WIDTH=4) (input rst,clk, output reg [WIDTH-1:0]count);
always @(posedge clk) begin
    if(rst)
    count<=4'b0000;
    else if(count==N-1)
    count<=0;
    else
    count<=count+1'b1;
end
endmodule
