`timescale 1 ns/10 ps

// blinker_tb.sv
// Arthur Cary, acary@hmc.edu
// September 9, 2026
// Tests the enable, max count, and reset features of the blinker.

module blinker_tb();
	logic		clk;		// clk for sim
	logic		reset;		// active high reset
	logic		enable;		// enable for testing
	logic		blink;		// 1 output LED

	blinker #(
		.WIDTH(3),		
		.MAX_COUNT(3'd3)
	) testBlinker (
		.clk(clk),
		.reset(reset),
		.en(enable),
		.blink(blink)
	);

	// generates clock
	always begin
		clk = 0; #10;
		clk = 1; #10;
	end

	initial begin
	// test 1 
		reset = 1;
		enable = 0;
		#25 reset = 0;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		assert (blink == 0)
			$display("PASSED! The blinker submodule behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The blinker submodule behaves incorrectly at time: %0t.", $time);

	// test 2
		enable = 1;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		assert (blink == 1)
			$display("PASSED! The blinker submodule behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The blinker submodule behaves incorrectly at time: %0t.", $time);

	// test 3
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		assert (blink == 0)
			$display("PASSED! The blinker submodule behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The blinker submodule behaves incorrectly at time: %0t.", $time);

	// test 4
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		assert (blink == 1)
			$display("PASSED! The blinker submodule behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The blinker submodule behaves incorrectly at time: %0t.", $time);

	// test 5
		reset = 1;
		#25 reset = 0;
		assert (blink == 0)
			$display("PASSED! The blinker submodule behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The blinker submodule behaves incorrectly at time: %0t.", $time);

	// test 6
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		#10;
		assert (blink == 1)
			$display("PASSED! The blinker submodule behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The blinker submodule behaves incorrectly at time: %0t.", $time);

		#50 $stop;
	end
endmodule
