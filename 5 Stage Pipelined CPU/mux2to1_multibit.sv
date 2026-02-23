module mux2to1_multibit #(parameter WIDTH = 64) (sel, out, in0, in1);
	input  logic [WIDTH-1:0] in0, in1;
   input  logic sel;
   output logic [WIDTH-1:0] out;
	
	genvar i;
	generate 
		for (i = 0; i < WIDTH; i++) begin : muxs64bit
			mux_2to1 muxbits(.sel, .out(out[i]), .in0(in0[i]), .in1(in1[i]));
		end
	endgenerate 
	
endmodule 