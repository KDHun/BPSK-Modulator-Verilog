module BPSK(in, clk, out);
	input in;
	input clk;
	output wire [7:0] out;
	wire [7: 0] sin_0, sin_90;
	Sine_wave_Generater s1(clk, sin_0);
	Sine_wave_Generater_90 s2(clk, sin_90);
	m21 m(sin_0, sin_90, in, out);
endmodule
