module forwarding_unit (RegWrite_EXMEM, RegWrite_MEMWB, Rd_EXMEM, Rd_MEMWB, Rn_IDEX, Rm_IDEX, forwardA, forwardB);

input logic RegWrite_EXMEM, RegWrite_MEMWB;
input logic [4:0] Rd_EXMEM, Rd_MEMWB, Rn_IDEX, Rm_IDEX;
output logic [1:0] forwardA, forwardB;

	always_comb begin
		//forward A\
		// Case #1
		if (RegWrite_EXMEM & (Rd_EXMEM != 31) & (Rd_EXMEM == Rn_IDEX)) begin
			forwardA = 2'b10;
		// Case #2
		end else if (RegWrite_MEMWB & (Rd_MEMWB != 31) & (Rd_MEMWB == Rn_IDEX)) begin 
			forwardA = 2'b01;
		end else begin
			forwardA = 2'b00;
		end
			
		//forward B
		// Case #1
		if (RegWrite_EXMEM & (Rd_EXMEM != 31) & (Rd_EXMEM == Rm_IDEX)) begin
			forwardB = 2'b10;
		// Case #2
		end else if (RegWrite_MEMWB & (Rd_MEMWB != 31) & (Rd_MEMWB == Rm_IDEX)) begin
			forwardB = 2'b01;
		
		end else begin
			forwardB = 2'b00;
		end
		
end

endmodule 