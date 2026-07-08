module seqDet_tb;
reg I,rst,clk;
wire out;
seqDet dut (.I(I),.rst(rst),.clk(clk),.out(out));
always #5 clk=~clk;
initial begin
    clk<=0; rst<=1; I<=0;
    #7 rst<=0;
    #10 I<=1; 
    #10 I<=1;
    #10 I<=0;
    #10 I<=0;
    #10 I<=1;
    #10 I<=0;
    #10 I<=1;
    #10 I<=1;
    #30 $finish;
end
endmodule
