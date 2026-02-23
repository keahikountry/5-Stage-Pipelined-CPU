`timescale 1ns/10ps
module zero_extender #(parameter WIDTH) (in, out);
	input logic [WIDTH-1:0] in;
	output logic [63:0] out;

	assign out[63:WIDTH] = 0;
	assign out[WIDTH-1:0] = in;

endmodule
 