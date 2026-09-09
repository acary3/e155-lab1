`timescale 1 ns/10 ps

// decoder_tb.sv
// Arthur Cary, acary@hmc.edu
// September 9, 2026
// Checks every one of the sixteen segment patterns the decoder can produce.

module decoder_tb();
	logic	[3:0]	s;		// 4-bit input switches
	logic	[6:0]	seg;		// 7 output segments

	decoder dut (
		.s(s),
		.seg(seg)
	);

	initial begin
	// decoder test 0
		s = 4'h0;
		#42;
		assert (seg == 7'b0000001)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test 1
		s = 4'h1;
		#42;
		assert (seg == 7'b1001111)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test 2
		s = 4'h2;
		#42;
		assert (seg == 7'b0010010)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test 3
		s = 4'h3;
		#42;
		assert (seg == 7'b0000110)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test 4
		s = 4'h4;
		#42;
		assert (seg == 7'b1001100)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test 5
		s = 4'h5;
		#42;
		assert (seg == 7'b0100100)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test 6
		s = 4'h6;
		#42;
		assert (seg == 7'b0100000)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test 7
		s = 4'h7;
		#42;
		assert (seg == 7'b0001111)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test 8
		s = 4'h8;
		#42;
		assert (seg == 7'b0000000)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test 9
		s = 4'h9;
		#42;
		assert (seg == 7'b0000100)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test A
		s = 4'hA;
		#42;
		assert (seg == 7'b0001000)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test b
		s = 4'hB;
		#42;
		assert (seg == 7'b1100000)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test C
		s = 4'hC;
		#42;
		assert (seg == 7'b0110001)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test d
		s = 4'hD;
		#42;
		assert (seg == 7'b1000010)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test E
		s = 4'hE;
		#42;
		assert (seg == 7'b0110000)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

	// decoder test F
		s = 4'hF;
		#42;
		assert (seg == 7'b0111000)
			$display("PASSED! The decoder behaves as desired at time: %0t.", $time);
		else
			$error("FAILED! The decoder behaves incorrectly at time: %0t.", $time);

		#416.7 $stop;
	end
endmodule
