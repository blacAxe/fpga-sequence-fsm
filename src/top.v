module top (
    input wire clk,
    input wire reset,
    output wire [6:0] seg
);

    wire [3:0] digit;

    sequence_fsm fsm_unit (
        .clk(clk),
        .reset(reset),
        .digit(digit)
    );

    seven_segment display_unit (
        .digit(digit),
        .seg(seg)
    );

endmodule