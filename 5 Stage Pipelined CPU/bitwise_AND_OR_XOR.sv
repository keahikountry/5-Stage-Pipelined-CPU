`timescale 1ns/10ps
module bitwise_AND_OR_XOR #(parameter WIDTH=64) (A, B, AND_out, OR_out, XOR_out);
	input logic [WIDTH-1:0] A, B;
	output [WIDTH-1:0] AND_out, OR_out, XOR_out;
	
	genvar i;
	generate
		for (i=0; i<WIDTH; i++) begin : bits
			and #50 (AND_out[i], A[i], B[i]);
			or #50 (OR_out[i], A[i], B[i]);
			xor #50 (XOR_out[i], A[i], B[i]);
		end
	endgenerate 
	
endmodule 