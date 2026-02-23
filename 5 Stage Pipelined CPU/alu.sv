`timescale 1ns/10ps
module alu (A, B, cntrl, result, negative, zero, overflow, carry_out);

// Meaning of signals in and out of the ALU:

// Flags:
// negative: whether the result output is negative if interpreted as 2's comp.
// zero: whether the result output was a 64-bit zero.
// overflow: on an add or subtract, whether the computation overflowed if the inputs are interpreted as 2's comp.
// carry_out: on an add or subtract, whether the computation produced a carry-out.

// cntrl			Operation						Notes:
// 000:			result = B						value of overflow and carry_out unimportant	done
// 010:			result = A + B																				done
// 011:			result = A - B																				done
// 100:			result = bitwise A & B		value of overflow and carry_out unimportant	done
// 101:			result = bitwise A | B		value of overflow and carry_out unimportant	done
// 110:			result = bitwise A XOR B	value of overflow and carry_out unimportant	done

	input  logic [63:0] A, B;
	input  logic [2:0] cntrl;
	output logic [63:0] result;
	output logic zero, negative, overflow, carry_out;
	
	logic [63:0] arith64, and64, or64, xor64;
	
	add_sub64 arithmetic (.A, .B, .cntrl(cntrl[0]), .carry_out, .out(arith64), .overflow);
	
	bitwise_AND_OR_XOR bitlogic (.A, .B, .AND_out(and64), .OR_out(or64), .XOR_out(xor64));
	
	assign negative = result[63];
	
	check0_64bit check0 (.in(result), .out(zero));
	
	mux8to1_multibit #(64) resultmux (.sel(cntrl), .out(result), .in0(B), .in1(0), .in2(arith64), .in3(arith64), .in4(and64), .in5(or64), .in6(xor64), .in7(0));
	
endmodule 


module alu_testbench ();
	logic [63:0] A, B;
	logic [2:0] cntrl;
	logic [63:0] result;
	logic zero, negative, overflow, carry_out;
	
	alu dut  (.*);
	
	initial begin
		A <= 5;
		B <= 10;
		cntrl <= 011;
		#10000;		//-5

		A <= 10;
		B <=10;
		cntrl <= 010;
		#1000;		//20
		
		A <= 64'hAAAAAAAAAAAAAAAA;
		B <= 64'h5555555555555555;
		cntrl <= 100;
		#1000;		//all 0
		
		A <= 64'hAAAAAAAAAAAAAAAA;
		B <= 64'h5555555555555555;
		cntrl <= 101;
		#1000;		//all f
		
		A <= 64'hAAAAAAAAAAAAAAAA;
		B <= 64'hAAAAAAAAAAAAAAAA;
		cntrl <= 110;
		#2000;		//0
		
		$stop;
		
	end
	
endmodule	