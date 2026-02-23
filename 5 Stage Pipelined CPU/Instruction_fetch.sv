`timescale 1ns/10ps
module Instruction_fetch (clk, reset, BrTaken, UncondBr, instruction, flags, cbz, zero, PC_plus4_ID, BrReg, BtoR, PC_out, PC_ID, instruction_ID);

	input logic clk, reset, BrTaken, UncondBr, cbz, zero, BtoR;
	input logic [3:0] flags;
	input logic [63:0] BrReg, PC_ID;
	input logic [31:0] instruction_ID;
	output logic [31:0] instruction;
	output logic [63:0] PC_plus4_ID;
	
	logic [63:0] current_PC;
	output logic [63:0] PC_out;
	logic [63:0] BranchAddress_signExtend, CondAddress_signExtend, brAddress_signExtend, 
	shifted_by2_Address, branch_PC, plus4, PC_updated, Branch_addr_final, plus4_ID;
	logic CBZ_true, LT_true, BrFinal, condition_met, not_UncondBr, cbz_enable, LT_final, Br1;
	
	instructmem getInstruction (.address(current_PC), .instruction(instruction), .clk(clk));
	
	condition_checker evaluate_cond (.cond_code(instruction_ID[3:0]), .flags(flags), .LT_true(LT_true));
	
	//conditional signal
	not #50 (not_UncondBr, UncondBr);
	
	and #50 (CBZ_true, BrTaken, not_UncondBr, zero);

	
	mux_2to1 cbz_or_lt (.sel(cbz), .out(condition_met), .in0(LT_true), .in1(zero));
	
//	logic BrFinal_temp;
	
	or #50 (Br1, condition_met, UncondBr);
	and #50 (BrFinal, Br1, BrTaken);
	
//	and #50 (BrFinal_temp, Br1, BrTaken);
//	D_FF BrFinal_DFF (.q(BrFinal), .d(BrFinal_temp), .reset, .clk);
	sign_extender #(26) BrAddress_extended (.in(instruction_ID[25:0]), .out(BranchAddress_signExtend));
	
	sign_extender #(19) CondAddress_extended (.in(instruction_ID[23:5]), .out(CondAddress_signExtend));
	
	
	mux2to1_multibit uncond_or_not_mux (.sel(UncondBr), .out(brAddress_signExtend), .in0(CondAddress_signExtend), .in1(BranchAddress_signExtend));
	
	assign shifted_by2_Address = {brAddress_signExtend[61:0], 2'b00};
	
	pc_adder do_pc_adder (.A(PC_ID), .B(shifted_by2_Address), .sum(Branch_addr_final));
	
	mux2to1_multibit BR_or_B (.sel(BtoR), .out(branch_PC), .in0(Branch_addr_final), .in1(BrReg));

	
	pc_adder incr_4 (.A(current_PC), .B(64'b0000000000000000000000000000000000000000000000000000000000000100), .sum(plus4));
	
	mux2to1_multibit branch_mux (.sel(BrFinal), .out(PC_updated), .in0(plus4), .in1(branch_PC));
	
	
	
	register #(64) pc_regsiter (.data_in(PC_updated), .wr_en(1), .data_out(current_PC), .clk, .reset);


	// branch w link value to save
	pc_adder ID_plus4 (.A(PC_ID), .B(64'b0000000000000000000000000000000000000000000000000000000000000100), .sum(plus4_ID)); 
	
	
	assign PC_plus4_ID = plus4_ID;
	assign PC_out = current_PC;
	
endmodule 
