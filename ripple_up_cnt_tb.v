module ripple_cnt_tb;
reg clk,rst;
wire [3:0]q;
ripple_cnt dut (.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
    clk<=0;rst<=1;
    #4 rst<=0;
    #90 $finish;
end
endmodule
