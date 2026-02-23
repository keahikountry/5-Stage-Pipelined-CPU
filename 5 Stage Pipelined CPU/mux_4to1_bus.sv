module mux_4to1_old (sel, out, in);
	input logic [1:0] sel;
	input logic [3:0] in;
	output logic out;
	
	logic temp, temp1;
		
	mux_2to1_old mux1 (.sel(sel[0]), .out(temp), .in(in[1:0]));
	
	mux_2to1_old mux2 (.sel(sel[0]), .out(temp1), .in(in[3:2]));
	
	mux_2to1_old combine (.sel(sel[1]), .out, .in({temp1, temp}));

endmodule 