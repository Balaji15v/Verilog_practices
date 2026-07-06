module counter_tb;
parameter N=10;
parameter WIDTH=4;
reg clk,rst;
wire [WIDTH-1:0]count;
counter dut (.clk(clk),.rst(rst),.count(count));
always #5 clk=~clk;
initial begin
    clk<=0;rst<=1;
    #10 rst<=0;
    #100 $finish;
end
endmodule
