`timescale 1ns/10ps
module decoder_1to2 (outputs, address, enable);
	input logic address;
	input logic enable;
	output logic [1:0] outputs;
	
	logic not_address;
	not #50(not_address, address);
	
	and #50(outputs[1], address, enable);
	and #50(outputs[0], not_address, enable);
	
endmodule
