module mux8to1_multibit #(parameter WIDTH = 64) (sel, out, in0, in1, in2, in3, in4, in5, in6, in7);
	input  logic [WIDTH-1:0] in0, in1, in2, in3, in4, in5, in6, in7;
   input  logic [2:0]  sel;
   output logic [WIDTH-1:0] out;
	
	genvar i;
	generate 
		for (i = 0; i < WIDTH; i++) begin : muxs64bit
			mux_8to1 muxbits(.sel, .out(out[i]), .in0(in0[i]), .in1(in1[i]), .in2(in2[i]), .in3(in3[i]), .in4(in4[i]), .in5(in5[i]), .in6(in6[i]), .in7(in7[i]));
		end
	endgenerate 
	
endmodule 