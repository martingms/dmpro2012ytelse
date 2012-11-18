onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /tb_array/clk
add wave -noupdate -label reset /tb_array/reset
add wave -noupdate -label instr -radix hexadecimal /tb_array/instr
add wave -noupdate -group ARRAY /tb_array/node_step
add wave -noupdate -group ARRAY /tb_array/data_write
add wave -noupdate -group ARRAY /tb_array/row_sel
add wave -noupdate -group ARRAY /tb_array/data_in
add wave -noupdate -group ARRAY /tb_array/data_out
add wave -noupdate -group ARRAY /tb_array/state_out
add wave -noupdate -expand -group ROW2 -expand -group COL2 -group S -label swap /tb_array/uut/row(2)/col(2)/core/n/node_s_reg/s_swap
add wave -noupdate -expand -group ROW2 -expand -group COL2 -group S -label step /tb_array/uut/row(2)/col(2)/core/n/node_s_reg/s_step
add wave -noupdate -expand -group ROW2 -expand -group COL2 -group S -label fromReg /tb_array/uut/row(2)/col(2)/core/n/node_s_reg/s_res
add wave -noupdate -expand -group ROW2 -expand -group COL2 -group S -label toReg /tb_array/uut/row(2)/col(2)/core/n/node_s_reg/s_new
add wave -noupdate -expand -group ROW2 -expand -group COL2 -group S -label in /tb_array/uut/row(2)/col(2)/core/n/node_s_reg/s_in
add wave -noupdate -expand -group ROW2 -expand -group COL2 -group S -label out /tb_array/uut/row(2)/col(2)/core/n/node_s_reg/s_out
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label ctrl /tb_array/uut/row(2)/col(2)/core/n/node_com/com_ctrl
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label n_in /tb_array/uut/row(2)/col(2)/core/n/node_com/n_in
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label s_in /tb_array/uut/row(2)/col(2)/core/n/node_com/s_in
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label e_in /tb_array/uut/row(2)/col(2)/core/n/node_com/e_in
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label w_in /tb_array/uut/row(2)/col(2)/core/n/node_com/w_in
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label data0 /tb_array/uut/row(2)/col(2)/core/n/node_com/data0
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label data1 /tb_array/uut/row(2)/col(2)/core/n/node_com/data1
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label data2 -radix unsigned /tb_array/uut/row(2)/col(2)/core/n/node_com/data2
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label data3 /tb_array/uut/row(2)/col(2)/core/n/node_com/data3
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label n_out /tb_array/uut/row(2)/col(2)/core/n/node_com/n_out
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label s_out /tb_array/uut/row(2)/col(2)/core/n/node_com/s_out
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label e_out /tb_array/uut/row(2)/col(2)/core/n/node_com/e_out
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group COM -label w_out /tb_array/uut/row(2)/col(2)/core/n/node_com/w_out
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group REG -label write /tb_array/uut/row(2)/col(2)/core/n/node_reg/write
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group REG -label addr0 /tb_array/uut/row(2)/col(2)/core/n/node_reg/adr0
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group REG -label in0 /tb_array/uut/row(2)/col(2)/core/n/node_reg/data0_in
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group REG -label addr1 /tb_array/uut/row(2)/col(2)/core/n/node_reg/adr1
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group REG -label in1 /tb_array/uut/row(2)/col(2)/core/n/node_reg/data1_in
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group REG -label addr2 /tb_array/uut/row(2)/col(2)/core/n/node_reg/adr2
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group REG -label in2 /tb_array/uut/row(2)/col(2)/core/n/node_reg/data2_in
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group REG -label addr3 /tb_array/uut/row(2)/col(2)/core/n/node_reg/adr3
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group REG -label in3 /tb_array/uut/row(2)/col(2)/core/n/node_reg/data3_in
add wave -noupdate -expand -group ROW2 -expand -group COL2 -expand -group REG -label regs -expand /tb_array/uut/row(2)/col(2)/core/n/node_reg/regs
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {444879 ps} 0}
configure wave -namecolwidth 151
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
WaveRestoreZoom {344018 ps} {508210 ps}
