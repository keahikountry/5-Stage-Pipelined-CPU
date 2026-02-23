module decoder_2to4 (outputs, address, enable);
	input logic [1:0] address;
	input logic enable;
	output logic [3:0] outputs;
	
	logic [1:0] store;
	
	decoder_1to2 select (.outputs(store), .address(address[1]), .enable(enable));
	
	decoder_1to2 lower (.outputs(outputs[1:0]), .address(address[0]), .enable(store[0]));
	decoder_1to2 upper (.outputs(outputs[3:2]), .address(address[0]), .enable(store[1]));
endmodule
