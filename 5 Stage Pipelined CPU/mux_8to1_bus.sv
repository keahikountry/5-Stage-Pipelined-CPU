module mux_8to1_old (sel, out, in);
	input logic [2:0] sel;
	input logic [7:0] in;
	output logic out;
	
	logic temp, temp1;
		
	mux_4to1_old mux1 (.sel(sel[1:0]), .out(temp), .in(in[3:0]));
	
	mux_4to1_old mux2 (.sel(sel[1:0]), .out(temp1), .in(in[7:4]));
	
	mux_2to1_old combine (.sel(sel[2]), .out, .in({temp1, temp}));

endmodule 