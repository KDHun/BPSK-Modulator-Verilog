module m21( D0, D1, S, Y);
	input wire [7: 0] D0, D1;
	input wire S;
	output reg [7:0] Y;

	always @(D0 or D1 or S)
	begin

	if(S) 
		Y= D1;
	else
		Y=D0;
	end

endmodule