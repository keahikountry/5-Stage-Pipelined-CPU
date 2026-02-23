module MEM_WB_register (memToReg_in, memToReg_out, regwrite_in, regwrite_out, dataRead_in, dataRead_out, ALU_in, ALU_out, Rd_in, Rd_out,
								clk, reset, link_in, link_out, PC_4_in, PC_4_out);
	
	input logic [63:0]	dataRead_in, ALU_in, PC_4_in;
	input logic [4:0] 	Rd_in;
	input logic clk, reset;
	input logic 			memToReg_in, regwrite_in, link_in;
	output logic [63:0]	dataRead_out, ALU_out, PC_4_out;
	output logic [4:0] 	Rd_out;
	output logic 			memToReg_out, regwrite_out, link_out;
	
	logic [134:0] temp;
	
	register #(135) MEMWB (.data_in({dataRead_in, ALU_in, Rd_in, memToReg_in, regwrite_in}), .wr_en(1), .data_out(temp), .clk, .reset);
	
	assign dataRead_out = temp[134:71];
	assign ALU_out = temp[70:7];
	assign Rd_out = temp[6:2];
	assign memToReg_out = temp[1];
	assign regwrite_out = temp[0];
	D_FF link_DFF (.q(link_out), .d(link_in), .reset(reset), .clk(clk));
	register #(64) PC_4 (.data_in(PC_4_in), .wr_en(1), .data_out(PC_4_out), .clk, .reset);

	
endmodule 

	logic [63:0] read_data_WB, ALU_result_WB;
	logic [4:0] Rd_WB;
	logic RegWrite_WB, MemtoReg_WB;
