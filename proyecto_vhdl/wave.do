onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /memory_tb/clock
add wave -noupdate /memory_tb/reset
add wave -noupdate -radix hexadecimal /memory_tb/address
add wave -noupdate -radix hexadecimal /memory_tb/data_in
add wave -noupdate /memory_tb/write
add wave -noupdate -radix hexadecimal /memory_tb/port_in_00
add wave -noupdate -radix hexadecimal /memory_tb/port_in_01
add wave -noupdate -radix hexadecimal /memory_tb/port_in_02
add wave -noupdate -radix hexadecimal -radixshowbase 0 /memory_tb/port_in_03
add wave -noupdate -radix hexadecimal /memory_tb/port_in_04
add wave -noupdate /memory_tb/port_in_05
add wave -noupdate /memory_tb/port_in_06
add wave -noupdate /memory_tb/port_in_07
add wave -noupdate /memory_tb/port_in_08
add wave -noupdate /memory_tb/port_in_09
add wave -noupdate /memory_tb/port_in_10
add wave -noupdate /memory_tb/port_in_11
add wave -noupdate /memory_tb/port_in_12
add wave -noupdate /memory_tb/port_in_13
add wave -noupdate /memory_tb/port_in_14
add wave -noupdate /memory_tb/port_in_15
add wave -noupdate -radix hexadecimal /memory_tb/data_out
add wave -noupdate -radix hexadecimal /memory_tb/port_out_00
add wave -noupdate -radix hexadecimal /memory_tb/port_out_01
add wave -noupdate -radix hexadecimal /memory_tb/port_out_02
add wave -noupdate /memory_tb/port_out_03
add wave -noupdate /memory_tb/port_out_04
add wave -noupdate /memory_tb/port_out_05
add wave -noupdate /memory_tb/port_out_06
add wave -noupdate /memory_tb/port_out_07
add wave -noupdate /memory_tb/port_out_08
add wave -noupdate /memory_tb/port_out_09
add wave -noupdate /memory_tb/port_out_10
add wave -noupdate /memory_tb/port_out_11
add wave -noupdate /memory_tb/port_out_12
add wave -noupdate /memory_tb/port_out_13
add wave -noupdate /memory_tb/port_out_14
add wave -noupdate /memory_tb/port_out_15
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {384287 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {103826 ps} {250628 ps}
