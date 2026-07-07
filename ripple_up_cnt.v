module tff(input t,rst,clk, output reg y);
always @(posedge clk or posedge rst) begin
    if(rst)
    y<=0;
    else if(t)
    y<=~y;
    else
    y<=y;
end
endmodule

module ripple_cnt(input clk,rst,output [3:0]q);
tff t0(.clk(clk),.rst(rst),.t(1'b1),.y(q[0]));
tff t1(.clk(~q[0]),.rst(rst),.t(1'b1),.y(q[1]));
tff t2(.clk(~q[1]),.rst(rst),.t(1'b1),.y(q[2]));
tff t3(.clk(~q[2]),.rst(rst),.t(1'b1),.y(q[3]));
endmodule
