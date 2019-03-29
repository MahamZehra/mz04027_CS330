onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/clk
add wave -noupdate /tb/reset
add wave -noupdate -divider PC
add wave -noupdate /tb/RISCV/PC_Out
add wave -noupdate -divider InstMemory
add wave -noupdate /tb/RISCV/instruction
add wave -noupdate /tb/RISCV/tempOut
add wave -noupdate /tb/RISCV/tempOut2
add wave -noupdate /tb/RISCV/opcode
add wave -noupdate /tb/RISCV/rd
add wave -noupdate /tb/RISCV/funct3
add wave -noupdate /tb/RISCV/rs1
add wave -noupdate /tb/RISCV/rs2
add wave -noupdate /tb/RISCV/funct7
add wave -noupdate /tb/RISCV/ReadData1
add wave -noupdate /tb/RISCV/ReadData2
add wave -noupdate /tb/RISCV/Branch
add wave -noupdate /tb/RISCV/MemRead
add wave -noupdate /tb/RISCV/MemtoReg
add wave -noupdate /tb/RISCV/MemWrite
add wave -noupdate /tb/RISCV/ALUSrc
add wave -noupdate /tb/RISCV/RegWrite
add wave -noupdate /tb/RISCV/ALUOp
add wave -noupdate /tb/RISCV/Operation
add wave -noupdate /tb/RISCV/imm_data
add wave -noupdate /tb/RISCV/data_out1
add wave -noupdate /tb/RISCV/Result
add wave -noupdate /tb/RISCV/Zero
add wave -noupdate /tb/RISCV/Read_Data
add wave -noupdate /tb/RISCV/WriteData
add wave -noupdate /tb/RISCV/nextOut
add wave -noupdate /tb/RISCV/Jump
add wave -noupdate /tb/RISCV/JumpSel
add wave -noupdate /tb/RISCV/Funct
add wave -noupdate /tb/RISCV/CarryIn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ns} {1 us}
