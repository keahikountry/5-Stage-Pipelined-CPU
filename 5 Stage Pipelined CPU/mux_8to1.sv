module mux_8to1 (sel, out, in0, in1, in2, in3, in4, in5, in6, in7);
	input logic [2:0] sel;
	input logic in0, in1, in2, in3, in4, in5, in6, in7;
	output logic out;
	
	logic temp0, temp1;
	
	mux_4to1 mux1 (.sel(sel[1:0]), .out(temp0), .in0, .in1, .in2, .in3);
	
	mux_4to1 mux2 (.sel(sel[1:0]), .out(temp1), .in0(in4), .in1(in5), .in2(in6), .in3(in7));
	
	mux_2to1 combine (.sel(sel[2]), .out, .in0(temp0), .in1(temp1));

endmodule 