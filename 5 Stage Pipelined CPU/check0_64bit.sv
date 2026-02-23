`timescale 1ns/10ps
module check0_64bit (in, out);
	input logic [63:0] in;
	output logic out;
	
	logic [31:0] first;
	logic [15:0] second;
	logic [7:0] third;
	logic [3:0] fourth;
	logic [1:0] fifth;
	
	genvar i, j, k, l, m;
	generate 
		for(i=0; i< 32; i = i + 1) begin : check0
			or #50 (first[i], in[2*i+1], in[2*i]);
		end
	endgenerate
	
	generate 
		for(j=0; j< 16; j = j + 1) begin : check
			or #50 (second[j], first[2*j+1], first[2*j]);
		end
	endgenerate
	
	generate 
		for(k=0; k< 8; k = k + 1) begin : check1
			or #50 (third[k], second[2*k+1], second[2*k]);
		end
	endgenerate
	
	generate 
		for(l=0; l< 4; l = l + 1) begin : check2
			or #50 (fourth[l], third[2*l+1], third[2*l]);
		end
	endgenerate
	
	generate 
		for(m=0; m< 2; m = m + 1) begin : check3
			or #50 (fifth[m], fourth[2*m+1], fourth[2*m]);
		end
	endgenerate
	
	logic hold;
	
	or #50 (hold, fifth[1], fifth[0]);
	
	not#50 (out, hold);
	
	
	
	
endmodule 

module check0_64bit_testbench ();
	logic [63:0] in;
	logic out;
	
	check0_64bit dut(in, out);
	
	
	initial begin
		in <= 1234567; #5000;
		
		in <= 64'h8000000000000000; #5000;
		
		in <= 64'hfffffffffffffff; #5000;
		
		in <= 0; #5000;
	
		$stop;
	end
	
endmodule 