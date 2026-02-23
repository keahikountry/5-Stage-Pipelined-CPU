module mux_4to1 (sel, out, in0, in1, in2, in3);
	input logic [1:0] sel;
	input logic in0, in1, in2, in3;
	output logic out;
	
	logic temp0, temp1;
		
	mux_2to1 mux1 (.sel(sel[0]), .out(temp0), .in0, .in1);
	
	mux_2to1 mux2 (.sel(sel[0]), .out(temp1), .in0(in2), .in1(in3));
	
	mux_2to1 combine (.sel(sel[1]), .out, .in0(temp0), .in1(temp1));

endmodule 