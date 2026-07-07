module bish #(parameter N=4)(input d,rst,clk,dir, output reg [N-1:0]out);
always @(posedge clk) begin
    if(rst)
    out<=4'h0;
    else if(dir)
    out<={out[N-2:0],d};
    else
    out<={d,out[N-1:1]};
end
endmodule
