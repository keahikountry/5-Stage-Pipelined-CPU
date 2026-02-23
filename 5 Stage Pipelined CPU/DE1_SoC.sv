/*
Tyler Braham
--/--/25
EE 371
project X

*/
module DE1_SoC (CLOCK_50, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, SW, LEDR, V_GPIO);

	// define ports
	input  logic CLOCK_50;
	output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	input  logic [3:0] KEY;
	input  logic [9:0] SW;
	output logic [9:0] LEDR;
	inout  logic [35:23] V_GPIO;
	
		//module calls

endmodule  // DE1_SoC


//DE1_SoC testbench that tests all possible combinations.
module DE1_SoC_testbench ();
	logic CLOCK_50;
	logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	logic [3:0] KEY;
	logic [9:0] SW;
	logic [9:0] LEDR;
	wire [35:23] V_GPIO;
	
		//dut call
	
	parameter CLOCK_PERIOD=100;
	initial begin
		KEY[0] <= 1;
		forever #(CLOCK_PERIOD/2) KEY[0] <= ~KEY[0]; // Forever toggle the clock
	end
	
	initial begin
	
	
	end
	
	
	
endmodule 
