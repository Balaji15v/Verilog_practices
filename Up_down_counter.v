module example #(parameter n=4) (input rst, clk,dir, output reg [n-1:0]out);
always @(posedge clk) begin
    if(rst)
    out<=1'b0;
    else begin
        case(dir)
            1'b1: out<=out+1;
            1'b0: out<=out-1;
            default: out<=0;
        endcase
    end
end
endmodule
