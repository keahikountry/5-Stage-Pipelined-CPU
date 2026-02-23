`timescale 1ns/10ps
module pc_adder  (A, B, sum);

	input logic [63:0] A, B;
	output logic [63:0] sum;
	logic [63:0] temporary;
	logic carry_out, overflow;
	
	
	
	add_sub64 hi(.A, .B, .cntrl(0), .carry_out, .out(sum), .overflow);

//	full_adder lowestBits (.A(A[0]), .B(B[0]), .C_in(1'b0), .C_out(temporary[0]), .out(sum[0]));

//	genvar i;
//	generate
//		for (i=1; i<64; i++) begin: addAllBits
//			full_adder current_adder (.A(A[i]), .B(B[i]), .C_in(temporary[i-1]), .C_out(temporary[i]), .out(sum[i]));
//		end
//	endgenerate
endmodule
//
//module pc_adder_testbench ();
//	logic signed [63:0] A, B;
//	logic [63:0] sum;
//	
//	pc_adder dut(.*);
//	
//	initial begin 
//		A = 76;
//		B = 28;
//		#10000;
//		
//		A = 76;
//		B = -28;
//		#10000;
//		
//		
//		
//		A = -76;
//		B = -28;
//		#10000;
//		
//		
//		
//		$stop; 
//	
//	
//	
//	end 
//	
//endmodule 