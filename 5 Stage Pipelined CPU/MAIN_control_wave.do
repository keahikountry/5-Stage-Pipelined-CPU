onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /CPU_testbench/dut/clk
add wave -noupdate /CPU_testbench/dut/reset
add wave -noupdate /CPU_testbench/dut/instruction
add wave -noupdate -radix unsigned /CPU_testbench/dut/PC_plus4
add wave -noupdate /CPU_testbench/dut/Reg2Loc
add wave -noupdate /CPU_testbench/dut/Uncondbranch
add wave -noupdate /CPU_testbench/dut/Branch
add wave -noupdate /CPU_testbench/dut/MemRead
add wave -noupdate /CPU_testbench/dut/MemtoReg
add wave -noupdate /CPU_testbench/dut/MemWrite
add wave -noupdate /CPU_testbench/dut/ALUSrc
add wave -noupdate /CPU_testbench/dut/RegWrite
add wave -noupdate /CPU_testbench/dut/Link
add wave -noupdate /CPU_testbench/dut/set_flags
add wave -noupdate /CPU_testbench/dut/Immediate
add wave -noupdate /CPU_testbench/dut/ALUOp
add wave -noupdate /CPU_testbench/dut/negative
add wave -noupdate /CPU_testbench/dut/zero
add wave -noupdate /CPU_testbench/dut/overflow
add wave -noupdate /CPU_testbench/dut/carry_out
add wave -noupdate /CPU_testbench/dut/flags
add wave -noupdate -radix unsigned /CPU_testbench/dut/ALU_imm
add wave -noupdate -radix unsigned /CPU_testbench/dut/Daddr
add wave -noupdate -radix unsigned /CPU_testbench/dut/imm_or_Daddr
add wave -noupdate -radix unsigned /CPU_testbench/dut/ALU_result
add wave -noupdate -radix unsigned /CPU_testbench/dut/ALU_data_in2
add wave -noupdate -radix unsigned /CPU_testbench/dut/Rn
add wave -noupdate -radix unsigned /CPU_testbench/dut/Rm
add wave -noupdate -radix unsigned /CPU_testbench/dut/Rd
add wave -noupdate -radix unsigned /CPU_testbench/dut/Rm_pre
add wave -noupdate -radix unsigned /CPU_testbench/dut/Rd_pre
add wave -noupdate -radix unsigned /CPU_testbench/dut/wr_data_pre
add wave -noupdate -radix unsigned /CPU_testbench/dut/wr_data
add wave -noupdate -radix unsigned /CPU_testbench/dut/Rn_data1
add wave -noupdate -radix unsigned /CPU_testbench/dut/Rm_data2
add wave -noupdate /CPU_testbench/dut/read_data
add wave -noupdate /CPU_testbench/dut/Instr_fetch/getInstruction/mem
add wave -noupdate -childformat {{{/CPU_testbench/dut/registerfile/reg_file[31]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[30]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[29]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[28]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[27]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[26]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[25]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[24]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[23]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[22]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[21]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[20]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[19]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[18]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[17]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[16]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[15]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[14]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[13]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[12]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[11]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[10]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[9]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[8]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[7]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[6]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[5]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[4]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[3]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[2]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[1]} -radix unsigned} {{/CPU_testbench/dut/registerfile/reg_file[0]} -radix unsigned}} -subitemconfig {{/CPU_testbench/dut/registerfile/reg_file[31]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[30]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[29]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[28]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[27]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[26]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[25]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[24]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[23]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[22]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[21]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[20]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[19]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[18]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[17]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[16]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[15]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[14]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[13]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[12]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[11]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[10]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[9]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[8]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[7]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[6]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[5]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[4]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[3]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[2]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[1]} {-height 15 -radix unsigned} {/CPU_testbench/dut/registerfile/reg_file[0]} {-height 15 -radix unsigned}} /CPU_testbench/dut/registerfile/reg_file
add wave -noupdate /CPU_testbench/dut/maincontrol/instruction
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {27500000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {132037500 ps}
