module pop_count (input [99:0]in, output reg [7:0] out);
integer i;
always @(*) begin
    out=0;
    for(i=0;i<100;i=i+1) begin
        if(in[i])
        out=out+1;
    end
end
endmodule
