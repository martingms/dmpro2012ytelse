onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /tb_node/uut/clk
add wave -noupdate -label reset /tb_node/uut/reset
add wave -noupdate -label instr -radix binary /tb_node/uut/instr
add wave -noupdate -expand -group N-MUX -label sel /tb_node/uut/mux_n/selector
add wave -noupdate -expand -group N-MUX -label in0 /tb_node/uut/mux_n/bus_in0
add wave -noupdate -expand -group N-MUX -label in1 /tb_node/uut/mux_n/bus_in1
add wave -noupdate -expand -group N-MUX -label out /tb_node/uut/mux_n/bus_out
add wave -noupdate -expand -group COM -label ctrl -radix binary /tb_node/uut/node_com/com_ctrl
add wave -noupdate -expand -group COM -label n_in /tb_node/uut/node_com/n_in
add wave -noupdate -expand -group COM -label s_in /tb_node/uut/node_com/s_in
add wave -noupdate -expand -group COM -label e_in /tb_node/uut/node_com/e_in
add wave -noupdate -expand -group COM -label w_in /tb_node/uut/node_com/w_in
add wave -noupdate -expand -group COM -label data0 /tb_node/uut/node_com/data0
add wave -noupdate -expand -group COM -label data1 /tb_node/uut/node_com/data1
add wave -noupdate -expand -group COM -label data2 /tb_node/uut/node_com/data2
add wave -noupdate -expand -group COM -label data3 /tb_node/uut/node_com/data3
add wave -noupdate -expand -group COM -label n_out /tb_node/uut/node_com/n_out
add wave -noupdate -expand -group COM -label s_out /tb_node/uut/node_com/s_out
add wave -noupdate -expand -group COM -label e_out /tb_node/uut/node_com/e_out
add wave -noupdate -expand -group COM -label w_out /tb_node/uut/node_com/w_out
add wave -noupdate -expand -group S-REG -label step /tb_node/uut/step
add wave -noupdate -expand -group S-REG -label s_in /tb_node/uut/sr_in
add wave -noupdate -expand -group S-REG -label s_out /tb_node/uut/sr_out
add wave -noupdate -expand -group REG -label write -radix binary /tb_node/uut/node_reg/write
add wave -noupdate -expand -group REG -label addr0 /tb_node/uut/node_reg/adr0
add wave -noupdate -expand -group REG -label data0 /tb_node/uut/node_reg/data0_in
add wave -noupdate -expand -group REG -label addr1 /tb_node/uut/node_reg/adr1
add wave -noupdate -expand -group REG -label data1 /tb_node/uut/node_reg/data1_in
add wave -noupdate -expand -group REG -label addr2 /tb_node/uut/node_reg/adr2
add wave -noupdate -expand -group REG -label data2 /tb_node/uut/node_reg/data2_in
add wave -noupdate -expand -group REG -label addr3 /tb_node/uut/node_reg/adr3
add wave -noupdate -expand -group REG -label data3 /tb_node/uut/node_reg/data3_in
add wave -noupdate -expand -group REG -label regs -expand /tb_node/uut/node_reg/regs
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {279861 ps} 0}
configure wave -namecolwidth 118
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
WaveRestoreZoom {261281 ps} {302038 ps}
