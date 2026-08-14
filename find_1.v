`timescale 1ns / 1ps
module find_1(input a,b,c_in, output [1:0]y,output sum,carry);
assign sum=a^b^c_in;
assign carry=(a&b)|(b&c_in)|(c_in&a);
assign y={carry,sum};
endmodule
