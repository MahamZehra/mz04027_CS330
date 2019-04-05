onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /tb/clk
add wave -noupdate -radix binary /tb/reset
add wave -noupdate -divider PC
add wave -noupdate -radix binary /tb/RISCV/PC_Out
add wave -noupdate -divider InstMemory
add wave -noupdate -radix binary /tb/RISCV/instruction
add wave -noupdate -radix binary /tb/RISCV/tempOut
add wave -noupdate -radix binary /tb/RISCV/tempOut2
add wave -noupdate -radix binary /tb/RISCV/opcode
add wave -noupdate -radix binary /tb/RISCV/rd
add wave -noupdate -radix binary /tb/RISCV/funct3
add wave -noupdate -radix binary /tb/RISCV/rs1
add wave -noupdate -radix binary /tb/RISCV/rs2
add wave -noupdate -radix binary /tb/RISCV/funct7
add wave -noupdate -radix binary /tb/RISCV/ReadData1
add wave -noupdate -radix binary /tb/RISCV/ReadData2
add wave -noupdate -radix binary /tb/RISCV/Branch
add wave -noupdate -radix binary /tb/RISCV/MemRead
add wave -noupdate -radix binary /tb/RISCV/MemtoReg
add wave -noupdate -radix binary /tb/RISCV/MemWrite
add wave -noupdate -radix binary /tb/RISCV/ALUSrc
add wave -noupdate -radix binary /tb/RISCV/RegWrite
add wave -noupdate -radix binary /tb/RISCV/ALUOp
add wave -noupdate -radix binary /tb/RISCV/Operation
add wave -noupdate -radix binary /tb/RISCV/imm_data
add wave -noupdate -radix binary /tb/RISCV/data_out1
add wave -noupdate -radix binary /tb/RISCV/Result
add wave -noupdate -radix binary /tb/RISCV/Zero
add wave -noupdate -radix binary /tb/RISCV/Read_Data
add wave -noupdate -radix binary /tb/RISCV/WriteData
add wave -noupdate -radix binary /tb/RISCV/nextOut
add wave -noupdate -radix binary /tb/RISCV/JumpSel
add wave -noupdate -radix binary /tb/RISCV/Funct
add wave -noupdate -radix binary /tb/RISCV/CarryIn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 186
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {29 ns}
