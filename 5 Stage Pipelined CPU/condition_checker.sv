//Checks if conditional branch should be achieved based on the flags, cond_true is active high
`timescale 1ns/10ps
module condition_checker (
	input  logic [3:0] cond_code,  // instruction[3:0]
	input  logic [3:0] flags,      // NZVC
	output logic LT_true 
	);

	logic N, Z, V, C;
	assign {N, Z, V, C} = flags;

	logic cond_lt;
	
	logic LTindex2, is_LT;
	not #50 (LTindex2, cond_code[2]);
	and #50 (is_LT, cond_code[0], cond_code[1], LTindex2, cond_code[3]);
	
	xor #50 (cond_lt, N, V);
	
	and #50 (LT_true, cond_lt, is_LT);
endmodule
