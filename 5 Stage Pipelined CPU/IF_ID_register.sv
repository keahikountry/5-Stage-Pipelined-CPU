module IF_ID_register (instruction_in, instruction_out, CP_in, CP_out, reset, clk);
	input logic [31:0] instruction_in;
	input logic [63:0] CP_in;
	input logic reset, clk;
	output logic [31:0] instruction_out;
	output logic [63:0] CP_out;
	logic [95:0] temp;
	
	register #(96) IFID (.data_in({instruction_in, CP_in}), .wr_en(1), .data_out(temp), .clk, .reset);
	assign instruction_out = temp[95:64];
	assign CP_out = temp[63:0];
	
endmodule 