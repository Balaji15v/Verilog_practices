module fadd_99( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    fadd m0 (.a(a[0]),.b(b[0]),.cin(cin),.carry(cout[0]),.sum(sum[0]));
    genvar i;
    generate
        for(i=1;i<100;i=i+1) begin:g
            fadd m1(.a(a[i]),.b(b[i]),.cin(cout[i-1]),.carry(cout[i]),.sum(sum[i]));
        end
    endgenerate
endmodule

module fadd (input a,b,cin, output sum, carry);
    assign sum = a^b^cin;
    assign carry = (a&b)|(b&cin)|(a&cin);
endmodule
