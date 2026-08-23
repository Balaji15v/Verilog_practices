module pop_count_tb;
reg [99:0] in;
wire [7:0] out;
pop_count uut (.in(in),.out(out));
initial begin
    in=100'h000000078904567812327ff83;
end
endmodule
