module bish_tb;
reg clk,rst,dir,a;
wire [3:0]out;
bish #(.N(4)) dut (.clk(clk),.rst(rst),.d(a),.dir(dir),.out(out));
always #5 clk=~clk;
initial begin
    clk<=0;rst<=1;dir<=0;a<=1'b1;
    #10 rst<=0;
    #50 dir<=1;
    #10 a<=0;
    #90 $finish;
end
endmodule
