// lab1_ac.sv
// Arthur Cary, acary@hmc.edu
// September 9, 2026
// Generates the 48 MHz clock, decodes the DP switches onto a
// seven-segment display, blinks led[2], and drives led[1:0] from the switches.

module lab1_ac #(
    parameter WIDTH     = 24,
    parameter MAX_COUNT = 9999999
) (
    input  logic [3:0] s,     // DP switches
    output logic [6:0] seg,   // seven_segment display; active on low
    output logic [2:0] led
);

    logic int_osc;
    logic blink;

    // internal high-speed oscillator (HSOSC), 48 MHz
    HSOSC hf_osc (
        .CLKHFPU (1'b1),
        .CLKHFEN (1'b1),
        .CLKHF   (int_osc)
    );

    decoder seg_decoder (
        .s   (s),
        .seg (seg)
    );

    // counter runs continuously from configuration
    blinker #(
        .WIDTH     (WIDTH),
        .MAX_COUNT (MAX_COUNT)
    ) led_blinker (
        .clk   (int_osc),
        .reset (1'b0),
        .en    (1'b1),
        .blink (blink)
    );

    // switch-to-LED logic
    assign led[0] = s[1] ^ s[0];
    assign led[1] = s[3] & s[2];
    assign led[2] = blink;

endmodule
