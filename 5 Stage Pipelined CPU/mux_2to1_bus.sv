`timescale 1ns/10ps
module mux_2to1_old (sel, out, in);
	input logic sel;
	input logic [1:0] in;
	output logic out;
	
	logic notsel, temp, temp1;
	
	not #50 (notsel, sel);
	
	and #50 mux1 (temp, sel, in[1]);
	and #50 mux2 (temp1, notsel, in[0]);
	
	or #50 combine (out, temp, temp1);
endmodule 