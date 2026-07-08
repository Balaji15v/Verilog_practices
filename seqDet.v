module seqDet(input I,rst,clk, output out);
parameter IDLE=0,s1=1,s2=2,s3=3,s4=4;
reg [2:0]cur_st,nxt_st;
assign out=(cur_st==s4)?1:0;
always @(posedge clk) begin
    if(rst)
    cur_st<=IDLE;
    else
    cur_st<=nxt_st;
end
always@(cur_st or I) begin
    case(cur_st)
        IDLE: nxt_st = I ? s1 : IDLE;
        s1:   nxt_st = I ? IDLE : s2;
        s2:   nxt_st = I ? s3 : IDLE;
        s3:   nxt_st = I ? s4 : IDLE;
        s4:   nxt_st = I ? s4 : IDLE;
        default: nxt_st = IDLE;
    endcase
end
endmodule
