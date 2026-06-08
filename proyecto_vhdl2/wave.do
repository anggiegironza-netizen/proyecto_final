onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /alu_tb/A
add wave -noupdate -radix hexadecimal /alu_tb/B
add wave -noupdate -radix hexadecimal -childformat {{/alu_tb/ALU_Sel(2) -radix hexadecimal} {/alu_tb/ALU_Sel(1) -radix hexadecimal} {/alu_tb/ALU_Sel(0) -radix hexadecimal}} -subitemconfig {/alu_tb/ALU_Sel(2) {-radix hexadecimal} /alu_tb/ALU_Sel(1) {-radix hexadecimal} /alu_tb/ALU_Sel(0) {-radix hexadecimal}} /alu_tb/ALU_Sel
add wave -noupdate -radix hexadecimal -childformat {{/alu_tb/Result(7) -radix hexadecimal} {/alu_tb/Result(6) -radix hexadecimal} {/alu_tb/Result(5) -radix hexadecimal} {/alu_tb/Result(4) -radix hexadecimal} {/alu_tb/Result(3) -radix hexadecimal} {/alu_tb/Result(2) -radix hexadecimal} {/alu_tb/Result(1) -radix hexadecimal} {/alu_tb/Result(0) -radix hexadecimal}} -subitemconfig {/alu_tb/Result(7) {-radix hexadecimal} /alu_tb/Result(6) {-radix hexadecimal} /alu_tb/Result(5) {-radix hexadecimal} /alu_tb/Result(4) {-radix hexadecimal} /alu_tb/Result(3) {-radix hexadecimal} /alu_tb/Result(2) {-radix hexadecimal} /alu_tb/Result(1) {-radix hexadecimal} /alu_tb/Result(0) {-radix hexadecimal}} /alu_tb/Result
add wave -noupdate -radix hexadecimal -childformat {{/alu_tb/NZVC(3) -radix hexadecimal} {/alu_tb/NZVC(2) -radix hexadecimal} {/alu_tb/NZVC(1) -radix hexadecimal} {/alu_tb/NZVC(0) -radix hexadecimal}} -expand -subitemconfig {/alu_tb/NZVC(3) {-radix hexadecimal} /alu_tb/NZVC(2) {-radix hexadecimal} /alu_tb/NZVC(1) {-radix hexadecimal} /alu_tb/NZVC(0) {-radix hexadecimal}} /alu_tb/NZVC
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {486227 ps} 0}
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
WaveRestoreZoom {112587 ps} {232701 ps}
