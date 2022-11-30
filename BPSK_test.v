`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:40:35 11/29/2022
// Design Name:   BPSK
// Module Name:   /home/char_/Desktop/DP/BPSK/BPSK_test.v
// Project Name:  BPSK
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BPSK
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BPSK_test;

	// Inputs
	reg in;
	reg clk;

	// Outputs
	wire [7:0] out;
	wire out1;
	integer cnt;
	// Instantiate the Unit Under Test (UUT)
	BPSK uut (
		.in(in), 
		.clk(clk), 
		.out(out)
	);
	always #1 clk = ~clk;
	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;
		cnt = 0;
		// Wait 100 ns for global reset to finish
		#100;
      #1 $monitor(in, ", %d", $signed(out));
		// Add stimulus here
	end
   always@(posedge clk)
	begin
		cnt = cnt + 1;
		if(cnt % 60 == 0) in = ~in;
	end
endmodule

