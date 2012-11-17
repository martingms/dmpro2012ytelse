onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_array/clk
add wave -noupdate /tb_array/reset
add wave -noupdate /tb_array/instr
add wave -noupdate /tb_array/node_step
add wave -noupdate /tb_array/data_write
add wave -noupdate /tb_array/row_sel
add wave -noupdate /tb_array/data_in
add wave -noupdate /tb_array/data_out
add wave -noupdate /tb_array/state_out
add wave -noupdate -expand -group 1 /tb_array/uut/row(1)/col(1)/edge/e/node_s_reg/s_swap
add wave -noupdate -expand -group 1 /tb_array/uut/row(1)/col(1)/edge/e/node_s_reg/s_step
add wave -noupdate -expand -group 1 /tb_array/uut/row(1)/col(1)/edge/e/node_s_reg/s_res
add wave -noupdate -expand -group 1 /tb_array/uut/row(1)/col(1)/edge/e/node_s_reg/s_new
add wave -noupdate -expand -group 1 /tb_array/uut/row(1)/col(1)/edge/e/node_s_reg/s_in
add wave -noupdate -expand -group 1 /tb_array/uut/row(1)/col(1)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group 2 /tb_array/uut/row(1)/col(2)/edge/e/node_s_reg/s_swap
add wave -noupdate -expand -group 2 /tb_array/uut/row(1)/col(2)/edge/e/node_s_reg/s_step
add wave -noupdate -expand -group 2 /tb_array/uut/row(1)/col(2)/edge/e/node_s_reg/s_res
add wave -noupdate -expand -group 2 /tb_array/uut/row(1)/col(2)/edge/e/node_s_reg/s_new
add wave -noupdate -expand -group 2 /tb_array/uut/row(1)/col(2)/edge/e/node_s_reg/s_in
add wave -noupdate -expand -group 2 /tb_array/uut/row(1)/col(2)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group 3 /tb_array/uut/row(1)/col(3)/edge/e/node_s_reg/s_swap
add wave -noupdate -expand -group 3 /tb_array/uut/row(1)/col(3)/edge/e/node_s_reg/s_step
add wave -noupdate -expand -group 3 /tb_array/uut/row(1)/col(3)/edge/e/node_s_reg/s_res
add wave -noupdate -expand -group 3 /tb_array/uut/row(1)/col(3)/edge/e/node_s_reg/s_new
add wave -noupdate -expand -group 3 /tb_array/uut/row(1)/col(3)/edge/e/node_s_reg/s_in
add wave -noupdate -expand -group 3 /tb_array/uut/row(1)/col(3)/edge/e/node_s_reg/s_out
add wave -noupdate -expand -group 4 /tb_array/uut/row(1)/col(4)/edge/e/node_s_reg/s_swap
add wave -noupdate -expand -group 4 /tb_array/uut/row(1)/col(4)/edge/e/node_s_reg/s_step
add wave -noupdate -expand -group 4 /tb_array/uut/row(1)/col(4)/edge/e/node_s_reg/s_res
add wave -noupdate -expand -group 4 /tb_array/uut/row(1)/col(4)/edge/e/node_s_reg/s_new
add wave -noupdate -expand -group 4 /tb_array/uut/row(1)/col(4)/edge/e/node_s_reg/s_in
add wave -noupdate -expand -group 4 /tb_array/uut/row(1)/col(4)/edge/e/node_s_reg/s_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {35680 ps} 0}
configure wave -namecolwidth 344
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
WaveRestoreZoom {160162 ps} {299192 ps}
