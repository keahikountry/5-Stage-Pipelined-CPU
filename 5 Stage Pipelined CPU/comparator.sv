`timescale 1ns/10ps
module comparator (A, B, is_zero, less_than);
	input logic [63:0] A, B;
	output logic is_zero, less_than;
	
	check0_64bit (.in(B), .out(is_zero));
	
endmodule 