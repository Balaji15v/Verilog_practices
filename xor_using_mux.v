`timescale 1ns / 1ps
module practice_1(input a,b,c, output reg x, inout y);
wire [1:0] y_1,y_3;
reg y_2;
assign y=y_2;
assign y_3={y,c};
assign y_1={a,b};
always @ (*) begin
case (y_1)
2'b00: y_2=1'b0;
2'b01: y_2=1'b1;
2'b10: y_2=1'b1;
2'b11: y_2=1'b0;
//default: y_2=1'bz;
endcase
end
always @(*) begin
case (y_3)
2'b00: x=1'b0;
2'b01: x=1'b1;
2'b10: x=1'b1;
2'b11: x=1'b0;
//default: x=1'bz;
endcase
end
endmodule
