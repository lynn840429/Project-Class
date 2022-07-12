#Choose File*******************************************
label .label_source -text "Source Directory :"
entry .source -width 20 -text source
button .choose_file -text " Choose File  " -command {
	set path [tk_getOpenFile]
	set source $path
	set fd [open $path r]
	set n 0
	while {![eof $fd]} {
		gets $fd data_f
		set F($n) $data_f
		incr n }
	set max $n
	close $fd }
grid .label_source .source .choose_file 
#Choose Path*******************************************
label .label_output -text "Output Directory :"
entry .output -width 20 -text output
button .output_path -text " Output Path " -command {
	set txtOut [tk_chooseDirectory]
	set output $txtOut}
grid .label_output .output .output_path
#Choose Days*******************************************
label .label_month -text "Month (1~12) :"
entry .month -width 5 -textvariable month
label .label_day1 -text "Day (1~30) :"
entry .day1 -width 5 -textvariable day1
label .label_day2 -text "~"
entry .day2 -width 5 -textvariable day2
#OutPut List*******************************************
button .let -text "Let's eat !!" -command {
	set file [open $txtOut/FoodList.txt w]
	for {set date $day1} {$date <= $day2} {incr date} {
		set num [ expr int(floor(rand()*$max)) ]
		set food $F($num)
		puts $file "$month/$date $food"}
	close $file}	
#Operation*********************************************
grid .label_month .month .label_day1 .day1 .label_day2 .day2 -sticky w
grid .let -row 4 -column 1 -sticky e