`timescale 1ns / 1ps
module practice_1_tb;
reg a,b,c;
wire y,x;
integer i;
practice_1 uut (.a(a),.b(b),.c(c),.y(y),.x(x));
initial begin
a=0;b=0;c=0;
for(i=0;i<8;i=i+1) begin
#10 {a,b,c}=i;
end
#10 $finish;
end
endmodule
