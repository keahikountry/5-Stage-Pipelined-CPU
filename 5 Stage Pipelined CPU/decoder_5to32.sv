module decoder_5to32 (outputs, address, enable);
	input logic [4:0] address;
	input logic enable;
	output logic [31:0] outputs;
	
	logic [1:0] store;
	decoder_1to2 select (.outputs(store), .address(address[4]), .enable(enable)); 

	decoder_4to16 out_upper (.outputs(outputs[31:16]), .address(address[3:0]), .enable(store[1]));
	decoder_4to16 out_lower (.outputs(outputs[15:0]), .address(address[3:0]), .enable(store[0]));
	
endmodule



