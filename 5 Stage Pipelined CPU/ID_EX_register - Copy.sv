/* module ID_EX_register (regWrite_in, regWrite_out, cbz_in, cbz_out, Uncondbranch_in, Uncondbranch_out, Branch_in, Branch_out,
								BrReg_in, BrReg_out, MemRead_in, MemRead_out, MemWrite_in, MemWrite_out, MemtoReg_in, MemtoReg_out,
								ALUsrc_in, ALUsrc_out, ALUOp_in, ALUOp_out, set_flags_in, set_flags_out, BtoR_in, BtoR_out, 
								CP_in, CP_out, Rn_data1_in, 
								Rn_data1_out, Rm_data2_in, Rm_data2_out, immediate_in, immediate_out, Rd_in, Rd_out, reset, clk);
	// **Pass in imm_or_Daddr as immeadiate_in
	
	//control signals
	input logic regWrite_in, cbz_in, Uncondbranch_in, Branch_in, MemRead_in, MemWrite_in, MemtoReg_in, ALUsrc_in, set_flags_in, BtoR_in;
	output logic regWrite_out, cbz_out, Uncondbranch_out, Branch_out, MemRead_out, MemWrite_out, MemtoReg_out, ALUsrc_out, set_flags_out, BtoR_out;
	
	input logic [2:0] ALUOp_in;
	output logic [2:0] ALUOp_out;
	
	input logic [63:0] BrReg_in, CP_in, Rn_data1_in, Rm_data2_in, immediate_in; 
	output logic [63:0] BrReg_out, CP_out, Rn_data1_out, Rm_data2_out, immediate_out;
	
	input logic [3:0] Rd_in;
	output logic [3:0] Rd_out;

	
	D_FF RegWrite_DFF     (.q(regWrite_out),     .d(regWrite_in),     .reset(reset), .clk(clk));
	D_FF cbz_DFF          (.q(cbz_out),          .d(cbz_in),          .reset(reset), .clk(clk));
	D_FF Uncondbranch_DFF (.q(Uncondbranch_out), .d(Uncondbranch_in), .reset(reset), .clk(clk));
	D_FF Branch_DFF       (.q(Branch_out),       .d(Branch_in),       .reset(reset), .clk(clk));
	D_FF MemRead_DFF      (.q(MemRead_out),      .d(MemRead_in),      .reset(reset), .clk(clk));
	D_FF MemWrite_DFF     (.q(MemWrite_out),     .d(MemWrite_in),     .reset(reset), .clk(clk));
	D_FF MemtoReg_DFF     (.q(MemtoReg_out),     .d(MemtoReg_in),     .reset(reset), .clk(clk));
	D_FF ALUSrc_DFF       (.q(ALUsrc_out),       .d(ALUsrc_in),       .reset(reset), .clk(clk));
	D_FF set_flags_DFF    (.q(set_flags_out),    .d(set_flags_in),    .reset(reset), .clk(clk));
	D_FF BtoR_DFF         (.q(BtoR_out),         .d(BtoR_in),         .reset(reset), .clk(clk));
	
	register #(64) CP (.data_in(CP_in), .wr_en(1), .data_out(CP_out), .clk, .reset);
	register #(64) BrReg (.data_in(BrReg_in), .wr_en(1), .data_out(BrReg_out), .clk, .reset);
	register #(64) Rn_reg (.data_in(Rn_data1_in), .wr_en(1), .data_out(Rn_data1_out), .clk, .reset);
	register #(64) Rm_reg (.data_in(Rm_data2_in), .wr_en(1), .data_out(Rm_data2_out), .clk, .reset);
	register #(4) Rd_reg (.data_in(Rd_in), .wr_en(1), .data_out(Rd_out), .clk, .reset);
	register #(3) ALUOp_reg (.data_in(ALUOp_in), .wr_en(1), .data_out(ALUOp_out), .clk, .reset);
	
endmodule */