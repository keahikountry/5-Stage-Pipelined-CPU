`timescale 1ns/10ps
module mux_2to1 (sel, out, in0, in1);
	input logic sel;
	input logic in0, in1;
	output logic out;
	
	logic notsel;
	logic temp, temp1;
	
	not #50 (notsel, sel);
	
	and #50 mux1 (temp, sel, in1);
	and #50 mux2 (temp1, notsel, in0);
	
	or #50 combine (out, temp, temp1);
endmodule 