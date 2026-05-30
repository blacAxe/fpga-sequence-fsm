                +----------------+
 clk ---------->|                |
 reset -------->|  sequence_fsm  |
                |                |
                +-------+--------+
                        |
                        | digit[3:0]
                        v
                +----------------+
                | seven_segment  |
                +-------+--------+
                        |
                        | seg[6:0]
                        v
                 7 Segment Display