onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /tb_simd_architecture/uut/clk
add wave -noupdate -label reset /tb_simd_architecture/uut/reset
add wave -noupdate -expand -group IRAM -label data -radix hexadecimal /tb_simd_architecture/uut/idata
add wave -noupdate -expand -group IRAM -label addr /tb_simd_architecture/uut/iaddr
add wave -noupdate -group DRAM -label in /tb_simd_architecture/uut/ddata_in
add wave -noupdate -group DRAM -label out -expand /tb_simd_architecture/uut/ddata_out
add wave -noupdate -group DRAM -label addr -expand /tb_simd_architecture/uut/daddr
add wave -noupdate -group DRAM -label write /tb_simd_architecture/uut/dwrite
add wave -noupdate -expand -group VRAM -label data /tb_simd_architecture/uut/vdata
add wave -noupdate -expand -group VRAM -label addr /tb_simd_architecture/uut/vaddr
add wave -noupdate -expand -group SIMD -label step /tb_simd_architecture/uut/simd_arr/node_step
add wave -noupdate -expand -group SIMD -label write /tb_simd_architecture/uut/simd_arr/data_write
add wave -noupdate -expand -group SIMD -label row /tb_simd_architecture/uut/simd_arr/row_sel
add wave -noupdate -expand -group SIMD -label in /tb_simd_architecture/uut/simd_arr/data_in
add wave -noupdate -expand -group SIMD -label out /tb_simd_architecture/uut/simd_arr/data_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL1 -label ROW1 /tb_simd_architecture/uut/simd_arr/row(1)/col(1)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL1 -label ROW2 /tb_simd_architecture/uut/simd_arr/row(2)/col(1)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL1 -label ROW3 /tb_simd_architecture/uut/simd_arr/row(3)/col(1)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL1 -label ROW4 /tb_simd_architecture/uut/simd_arr/row(4)/col(1)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL2 -label ROW1 /tb_simd_architecture/uut/simd_arr/row(1)/col(2)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL2 -label ROW2 /tb_simd_architecture/uut/simd_arr/row(2)/col(2)/core/n/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL2 -label ROW3 /tb_simd_architecture/uut/simd_arr/row(3)/col(2)/core/n/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL2 -label ROW4 /tb_simd_architecture/uut/simd_arr/row(4)/col(2)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL3 -label ROW1 /tb_simd_architecture/uut/simd_arr/row(1)/col(3)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL3 -label ROW2 /tb_simd_architecture/uut/simd_arr/row(2)/col(3)/core/n/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL3 -label ROW3 /tb_simd_architecture/uut/simd_arr/row(3)/col(3)/core/n/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL3 -label ROW4 /tb_simd_architecture/uut/simd_arr/row(4)/col(3)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL4 -label ROW1 /tb_simd_architecture/uut/simd_arr/row(1)/col(4)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL4 -label ROW2 /tb_simd_architecture/uut/simd_arr/row(2)/col(4)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL4 -label ROW3 /tb_simd_architecture/uut/simd_arr/row(3)/col(4)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group SIMD -expand -group Array -expand -group COL4 -label ROW4 /tb_simd_architecture/uut/simd_arr/row(4)/col(4)/edge/e/node_s_reg/s_out
add wave -noupdate -group CTRL -group REG -label write /tb_simd_architecture/uut/simd_ctrl/reg/write
add wave -noupdate -group CTRL -group REG -label adr0 /tb_simd_architecture/uut/simd_ctrl/reg/adr0
add wave -noupdate -group CTRL -group REG -label adr1 /tb_simd_architecture/uut/simd_ctrl/reg/adr1
add wave -noupdate -group CTRL -group REG -label adr2 /tb_simd_architecture/uut/simd_ctrl/reg/adr2
add wave -noupdate -group CTRL -group REG -label in /tb_simd_architecture/uut/simd_ctrl/reg/data0_in
add wave -noupdate -group CTRL -group REG -label out1 /tb_simd_architecture/uut/simd_ctrl/reg/data1_out
add wave -noupdate -group CTRL -group REG -label out2 /tb_simd_architecture/uut/simd_ctrl/reg/data2_out
add wave -noupdate -group CTRL -group REG -label regs /tb_simd_architecture/uut/simd_ctrl/reg/regs
add wave -noupdate -group CTRL -expand -group DRAM -label data /tb_simd_architecture/uut/simd_ctrl/ddata
add wave -noupdate -group CTRL -expand -group DRAM -label addr /tb_simd_architecture/uut/simd_ctrl/daddr
add wave -noupdate -expand -group DMA -label enable /tb_simd_architecture/uut/simd_dma/enable
add wave -noupdate -expand -group DMA -label cmd /tb_simd_architecture/uut/simd_dma/command
add wave -noupdate -expand -group DMA -label params /tb_simd_architecture/uut/simd_dma/parameter
add wave -noupdate -expand -group DMA -label active /tb_simd_architecture/uut/simd_dma/active
add wave -noupdate -expand -group DMA -label state /tb_simd_architecture/uut/simd_dma/state
add wave -noupdate -expand -group DMA -label state_n /tb_simd_architecture/uut/simd_dma/next_state
add wave -noupdate -expand -group DMA -group DRAM -label addr /tb_simd_architecture/uut/simd_dma/mem_addr
add wave -noupdate -expand -group DMA -group DRAM -label data -expand /tb_simd_architecture/uut/simd_dma/mem_data
add wave -noupdate -expand -group DMA -group DRAM -label read /tb_simd_architecture/uut/simd_dma/mem_write
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1248108 ps} 0}
configure wave -namecolwidth 428
configure wave -valuecolwidth 40
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
configure wave -timelineunits ps
update
WaveRestoreZoom {1239160 ps} {1556375 ps}
