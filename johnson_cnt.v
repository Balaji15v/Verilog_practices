module dff(input d,rst,clk, output reg y);
always @(posedge clk) begin
    if(rst)
    y<=0;
    else
    y<=d;
end
endmodule

module ripple_cnt(input clk,rst,output [3:0]q);
dff t0(.clk(clk),.rst(rst),.d(~q[3]),.y(q[0]));
dff t1(.clk(clk),.rst(rst),.d(q[0]),.y(q[1]));
dff t2(.clk(clk),.rst(rst),.d(q[1]),.y(q[2]));
dff t3(.clk(clk),.rst(rst),.d(q[2]),.y(q[3]));
endmodule
