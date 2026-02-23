module pc(clk, reset, pc_in, pc_out);
	input clk;
	input reset;
	input [63:0] pc_in;
	output reg [63:0] pc_out;
	
	genvar i;
	generate
		for (i = 0; i < 64; i++) begin: eachDFF
			D_FF dffff(.q(pc_out[i]), .d(pc_in[i]), .reset(reset), .clk(clk));
		end
	endgenerate

endmodule 