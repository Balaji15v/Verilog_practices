module tb;
reg rst,clk,dir;
wire [5:0]out;
example #(.n(6)) dut (.rst(rst),.clk(clk),.dir(dir),.out(out));
always #5 clk=~clk;
initial begin
    clk=1'b1;rst=1;dir=1'b0;
    #5 rst=0;
    #50 dir=1;
    #10 $finish;
end
endmodule
