`timescale 1ns / 1ps
module axi_tb;
    reg         clk, rst_n, start;
    reg  [31:0] din;
    wire        valid, ready, got;
    wire [31:0] data, out;
    hs_sender S (
        .clk   (clk),
        .rst_n (rst_n),
        .start (start),
        .din   (din),
        .ready (ready),
        .valid (valid),
        .data  (data)
    );

    hs_receiver R (
        .clk      (clk),
        .rst_n    (rst_n),
        .valid    (valid),
        .data     (data),
        .ready    (ready),
        .out (out),
        .got      (got)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        rst_n = 0;
        start = 0;
        din   = 0;
        #20;
        rst_n = 1;   
        #20;

        din   = 32'hDEADBEEF;
        start = 1;
        #10;
        start = 0;
        #100;
        if (out == 32'hDEADBEEF)
            $display("Test 1 PASS: captured = %h", out);
        else
            $display("Test 1 FAIL: captured = %h", out);
            
        din   = 32'h12345678;
        start = 1;
        #10;
        start = 0;
        #100;
        if (out == 32'h12345678)
            $display("Test 2 PASS: captured = %h", out);
        else
            $display("Test 2 FAIL: captured = %h", out);

        $finish;
    end
endmodule
