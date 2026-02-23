onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /alu_testbench/dut/A
add wave -noupdate /alu_testbench/dut/B
add wave -noupdate /alu_testbench/dut/cntrl
add wave -noupdate /alu_testbench/dut/result
add wave -noupdate /alu_testbench/dut/zero
add wave -noupdate /alu_testbench/dut/negative
add wave -noupdate /alu_testbench/dut/overflow
add wave -noupdate /alu_testbench/dut/carry_out
add wave -noupdate /alu_testbench/dut/arith64
add wave -noupdate /alu_testbench/dut/and64
add wave -noupdate /alu_testbench/dut/or64
add wave -noupdate /alu_testbench/dut/xor64
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13837709 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 50
configure wave -gridperiod 100
configure wave -griddelta 2
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {14700 ns}
