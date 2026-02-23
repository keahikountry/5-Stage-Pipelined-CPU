module EX_MEM_register (memRead_in, memWrite_in, memRead_out, memWrite_out, memToReg_in, memToReg_out, regwrite_in, regwrite_out,
								memWrData_in, ALU_in, memWrData_out, ALU_out, Rd_in, Rd_out, clk, reset, link_in, link_out, PC_4_in, PC_4_out);
								
		
	input logic 			memRead_in, memWrite_in, memToReg_in, regwrite_in, link_in;
	input logic 			clk, reset;
	output logic 			memRead_out, memWrite_out, memToReg_out, regwrite_out, link_out;

	input logic [63:0]	memWrData_in, ALU_in, PC_4_in;	
	output logic [63:0] 	memWrData_out, ALU_out, PC_4_out;
	
	input logic [4:0] 	Rd_in;
	output logic [4:0] 	Rd_out;
	
	logic [136:0] 			temp;
	
	logic [63:0] ALU_or_PC4;
	
	
	mux2to1_multibit #(64) ALUorPC4 (.sel(link_in), .out(ALU_or_PC4), .in0(ALU_in), .in1(PC_4_in));
	
	
	register #(137) MEMWB (.data_in({memWrData_in, ALU_or_PC4, Rd_in, memRead_in, memWrite_in, memToReg_in, regwrite_in}),
									.wr_en(1), .data_out(temp), .clk, .reset);
	assign memWrData_out = temp[136:73];
	assign ALU_out = temp[72:9];
	assign Rd_out = temp[8:4];
	assign memRead_out = temp[3];
	assign memWrite_out = temp[2];
	assign memToReg_out = temp[1];
	assign regwrite_out = temp[0];
	D_FF link_DFF (.q(link_out), .d(link_in), .reset(reset), .clk(clk));
	register #(64) PC_4 (.data_in(PC_4_in), .wr_en(1), .data_out(PC_4_out), .clk, .reset);

	
endmodule 
