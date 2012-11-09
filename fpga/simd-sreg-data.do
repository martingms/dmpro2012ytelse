onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_array/uut/clk
add wave -noupdate /tb_array/uut/reset
add wave -noupdate /tb_array/uut/instr
add wave -noupdate /tb_array/uut/node_step
add wave -noupdate /tb_array/uut/data_write
add wave -noupdate /tb_array/uut/row_sel
add wave -noupdate /tb_array/uut/data_in
add wave -noupdate -expand /tb_array/uut/data_out
add wave -noupdate /tb_array/uut/state_out
add wave -noupdate -expand /tb_array/uut/s_data
add wave -noupdate -expand -group 1-1 /tb_array/uut/row(1)/col(1)/edge/e/node_s_reg/s_step
add wave -noupdate -expand -group 1-1 /tb_array/uut/row(1)/col(1)/edge/e/node_s_reg/s_in
add wave -noupdate -expand -group 1-1 /tb_array/uut/row(1)/col(1)/edge/e/node_s_reg/tmp_s
add wave -noupdate -expand -group 1-1 /tb_array/uut/row(1)/col(1)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group 1-2 /tb_array/uut/row(1)/col(2)/edge/e/node_s_reg/s_step
add wave -noupdate -expand -group 1-2 /tb_array/uut/row(1)/col(2)/edge/e/node_s_reg/s_in
add wave -noupdate -expand -group 1-2 /tb_array/uut/row(1)/col(2)/edge/e/node_s_reg/tmp_s
add wave -noupdate -expand -group 1-2 /tb_array/uut/row(1)/col(2)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group 1-3 /tb_array/uut/row(1)/col(3)/edge/e/node_s_reg/s_step
add wave -noupdate -expand -group 1-3 /tb_array/uut/row(1)/col(3)/edge/e/node_s_reg/s_in
add wave -noupdate -expand -group 1-3 /tb_array/uut/row(1)/col(3)/edge/e/node_s_reg/tmp_s
add wave -noupdate -expand -group 1-3 /tb_array/uut/row(1)/col(3)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group 1-4 /tb_array/uut/row(1)/col(4)/edge/e/node_s_reg/s_step
add wave -noupdate -expand -group 1-4 /tb_array/uut/row(1)/col(4)/edge/e/node_s_reg/s_in
add wave -noupdate -expand -group 1-4 /tb_array/uut/row(1)/col(4)/edge/e/node_s_reg/tmp_s
add wave -noupdate -expand -group 1-4 /tb_array/uut/row(1)/col(4)/edge/e/node_s_reg/s_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {204978 ps} 0}
configure wave -namecolwidth 341
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
configure wave -timelineunits ps
update
WaveRestoreZoom {169686 ps} {372390 ps}
