module fadd99_tb;
reg [99:0] a,b;
reg cin;
wire [99:0] sum, cout;
fadd_99 uut (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
    a=100'h0;
    b=100'h0;
   #10 a=100'h000000234090f0bca29346dac;
   #10 b=100'h000000234040a0bca14346dac;
    #20 $finish;
end
endmodule
