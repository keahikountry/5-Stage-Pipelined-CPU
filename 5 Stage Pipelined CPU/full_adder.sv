`timescale 1ns/10ps
module full_adder (A, B, C_in, C_out, out);
	input  logic A, B, C_in;
	output logic C_out, out;
	
	logic ab, bc, ac;
	
	xor #50 outie (out, A, B, C_in);

	and #50 (ab, A, B);
	
	and #50 (bc, B, C_in);
	
	and #50 (ac, A, C_in);
	
	or #50 C_outie (C_out, ab, bc, ac);
	
endmodule 