`timescale 1ns/10ps
module add_sub64 (A, B, cntrl, carry_out, out, overflow);
	input  logic [63:0] A, B;
	input  logic cntrl;
	output logic [63:0] out;
	output logic carry_out, overflow;
	
	logic [63:0] C_out, controlled_B;
	
	xor #50 negcntrl0 (controlled_B[0], B[0], cntrl);
	full_adder zerobit (.A(A[0]), .B(controlled_B[0]), .C_in(cntrl), .C_out(C_out[0]), .out(out[0]));
	
	genvar i;
	generate 
		for (i = 1; i < 64; i++) begin:	outputs
			xor #50 negcntrl (controlled_B[i], B[i], cntrl);
			full_adder bits (.A(A[i]), .B(controlled_B[i]), .C_in(C_out[i-1]), .C_out(C_out[i]), .out(out[i]));
		end
	endgenerate
	
	xor #50 of (overflow, C_out[63], C_out[62]);	//overflow check
	
	assign carry_out = C_out[63];						//carryout check
	
endmodule 