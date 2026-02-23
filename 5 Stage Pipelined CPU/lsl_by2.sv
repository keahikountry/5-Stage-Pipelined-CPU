`timescale 1ns/10ps
module lsl #(parameter WIDTH, SHAMT) (input logic [WIDTH-1:0] in_address, output logic [WIDTH-1:0] out_address);
	assign out_address[WIDTH:SHAMT] = in_address[WIDTH-SHAMT:0];
	assign out_address[SHAMT-1:0] = 0;
endmodule
	
