module example #(parameter n=4) (input rst, clk,dir, output reg [n-1:0]out);
always @(posedge clk) begin
    if(rst)
    out<=1'b0;
    else begin
    if(dir)
    out<=out+1'b1;
    else
    out<=out-1'b1;
    end
end
endmodule
