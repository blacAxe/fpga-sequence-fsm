module sequence_fsm (
    input wire clk,
    input wire reset,
    output reg [3:0] digit
);

    reg [2:0] state;

    localparam S0 = 3'd0;
    localparam S1 = 3'd1;
    localparam S2 = 3'd2;
    localparam S3 = 3'd3;
    localparam S4 = 3'd4;
    localparam S5 = 3'd5;

    always @(posedge clk or posedge reset)
    begin
        if (reset)
            state <= S0;
        else begin
            case (state)
                S0: state <= S1;
                S1: state <= S2;
                S2: state <= S3;
                S3: state <= S4;
                S4: state <= S5;
                S5: state <= S0;
                default: state <= S0;
            endcase
        end
    end

    always @(*)
    begin
        case (state)
            S0: digit = 4'd2;
            S1: digit = 4'd1;
            S2: digit = 4'd1;
            S3: digit = 4'd6;
            S4: digit = 4'd7;
            S5: digit = 4'd8;
            default: digit = 4'd0;
        endcase
    end

endmodule