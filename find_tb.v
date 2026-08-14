`timescale 1ns / 1ps
module find_tb;
reg a,b,c_in;
wire [1:0]y;
wire sum,carry;
find_1 uut (.a(a),.b(b),.c_in(c_in),.y(y),.sum(sum),.carry(carry));
integer i;
initial begin
a=0;b=0;c_in=0;
for(i=0;i<8;i=i+1) begin
#10 {a,b,c_in}=i;
end
#10 $finish;
end
endmodule
