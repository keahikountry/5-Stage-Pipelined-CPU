module decoder_4to16 (outputs, address, enable);
	input logic [3:0] address;
	input logic enable;
	output logic [15:0] outputs;
	
	logic [3:0] store;
	
	decoder_2to4 toplayer (.outputs(store), .address(address[3:2]), .enable(enable)); 

	decoder_2to4 topQuarter (.outputs(outputs[15:12]), .address(address[1:0]), .enable(store[3]));
	decoder_2to4 upperQuarter (.outputs(outputs[11:8]), .address(address[1:0]), .enable(store[2]));
	decoder_2to4 lowerQuarter (.outputs(outputs[7:4]), .address(address[1:0]), .enable(store[1]));
	decoder_2to4 bottomQuarter (.outputs(outputs[3:0]), .address(address[1:0]), .enable(store[0]));
	
endmodule
