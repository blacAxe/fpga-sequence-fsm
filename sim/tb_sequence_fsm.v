`timescale 1ns/1ps

module tb_sequence_fsm;

    reg clk;
    reg reset;

    wire [6:0] seg;

    top uut (
        .clk(clk),
        .reset(reset),
        .seg(seg)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("sim/sequence_fsm.vcd");
        $dumpvars(0, tb_sequence_fsm);

        reset = 1;
        #10;
        reset = 0;

        #100;
        $finish;
    end

endmodule