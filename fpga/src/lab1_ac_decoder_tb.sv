`timescale 1 ns/10 ps

// lab1_ac_decoder_tb.sv
// Arthur Cary, acary@hmc.edu
// September 9, 2026

// Confirms the decoder is wired into the top level correctly by driving the
// switches and watching the segments

module lab1_ac_decoder_tb();
	logic	[3:0]	s;		// 4-bit input switches
	logic	[2:0]	led;		// 3 output LEDs
	logic	[6:0]	seg;		// 7 output segments

	lab1_ac dut (
		.s(s),
		.seg(seg),
		.led(led)
	);

	initial begin
	//   decoder connection test 0
		s = 4'h0;
		# 42;
		assert (seg == 7'b0000001)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test 1
		s = 4'h1;
		# 42;
		assert (seg == 7'b1001111)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test 2
		s = 4'h2;
		# 42;
		assert (seg == 7'b0010010)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test 3
		s = 4'h3;
		# 42;
		assert (seg == 7'b0000110)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test 4
		s = 4'h4;
		# 42;
		assert (seg == 7'b1001100)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test 5
		s = 4'h5;
		# 42;
		assert (seg == 7'b0100100)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test 6
		s = 4'h6;
		# 42;
		assert (seg == 7'b0100000)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test 7
		s = 4'h7;
		# 42;
		assert (seg == 7'b0001111)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test 8
		s = 4'h8;
		# 42;
		assert (seg == 7'b0000000)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test 9
		s = 4'h9;
		# 42;
		assert (seg == 7'b0000100)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test A
		s = 4'hA;
		# 42;
		assert (seg == 7'b0001000)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test b
		s = 4'hB;
		# 42;
		assert (seg == 7'b1100000)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test C
		s = 4'hC;
		# 42;
		assert (seg == 7'b0110001)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test d
		s = 4'hD;
		# 42;
		assert (seg == 7'b1000010)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test E
		s = 4'hE;
		# 42;
		assert (seg == 7'b0110000)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

	//   decoder connection test F
		s = 4'hF;
		# 42;
		assert (seg == 7'b0111000)
			$display("PASSED! The decoder submodule connection behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder submodule connection behaves incorrectly at time: %0t.", $time);

		#420 $stop;
	end
endmodule
