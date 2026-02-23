module mux_32to1 (sel, out, in);
	input logic [4:0] sel;
	input logic [31:0] in;
	output logic out;
	
	logic temp, temp1;
		
	mux_16to1 mux1 (.sel(sel[3:0]), .out(temp), .in(in[15:0]));
	
	mux_16to1 mux2 (.sel(sel[3:0]), .out(temp1), .in(in[31:16]));
	
	mux_2to1_old combine (.sel(sel[4]), .out, .in({temp1, temp}));

endmodule 
