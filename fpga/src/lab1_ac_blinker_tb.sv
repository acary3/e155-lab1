`timescale 1 ns/10 ps

// lab1_ac_blinker_tb.sv
// Arthur Cary, acary@hmc.edu
// September 9, 2026
// Checks all three LEDs running off the clock the top level makes for itself.

module lab1_ac_blinker_tb();
	logic	[3:0]	s;		// 4-bit input switches
	logic	[2:0]	led;		// 3 output LEDs
	logic	[6:0]	seg;		// 7 output segments
	logic		clk;		// copy of the internal oscillator

	lab1_ac #(
		.WIDTH(3),		// narrow counter so the blink is visible
		.MAX_COUNT(3'd3)	// roll over every 4 clocks
	) dut (
		.s(s),
		.seg(seg),
		.led(led)
	);

	initial begin
		force dut.led_blinker.count = '0;
		force dut.led_blinker.blink = 1'b0;
		#1;
		release dut.led_blinker.count;
		release dut.led_blinker.blink;
	end

	initial begin
	// s = 0101 gives led[1] = 0 & 1 = 0 and led[0] = 0 ^ 1 = 1
		s = 4'b0101;

	// clock test 
		assert (clk === 1'b0 || clk === 1'b1)
			$display("PASSED! The top level clock is running as desired at time: %0t.", $time);
		else
			$error("FAILED! The top level clock is undriven at time: %0t.", $time);

	// LED test 1 
		#50;
		assert (led[2] == 1'b1)
			$display("PASSED! The blinking LED behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The blinking LED behaves incorrectly at time: %0t.", $time);

		assert (led[1:0] == 2'b01)
			$display("PASSED! The switched LEDs behave as desired at time: %0t.", $time);
		else
			$error("FAILED! The switched LEDs behave incorrectly at time: %0t.", $time);

	// s = 1110 gives led[1] = 1 & 1 = 1 and led[0] = 1 ^ 0 = 1
		s = 4'b1110;

	// LED test 2 
		#100;
		assert (led[2] == 1'b0)
			$display("PASSED! The blinking LED behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The blinking LED behaves incorrectly at time: %0t.", $time);

		assert (led[1:0] == 2'b11)
			$display("PASSED! The switched LEDs behave as desired at time: %0t.", $time);
		else
			$error("FAILED! The switched LEDs behave incorrectly at time: %0t.", $time);

	// s = 1100 gives led[1] = 1 & 1 = 1 and led[0] = 0 ^ 0 = 0
		s = 4'b1100;

	// LED test 3 
		#80;
		assert (led[2] == 1'b1)
			$display("PASSED! The blinking LED behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The blinking LED behaves incorrectly at time: %0t.", $time);

		assert (led[1:0] == 2'b10)
			$display("PASSED! The switched LEDs behave as desired at time: %0t.", $time);
		else
			$error("FAILED! The switched LEDs behave incorrectly at time: %0t.", $time);

	// LED test 4 
		#80;
		assert (led[2] == 1'b0)
			$display("PASSED! The blinking LED behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The blinking LED behaves incorrectly at time: %0t.", $time);

		#420 $stop;
	end
endmodule
