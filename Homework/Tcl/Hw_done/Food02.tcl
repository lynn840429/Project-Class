#Choose File*******************************************
label .label_source -text "Source Directory :"
entry .source -width 20 -text source
button .choose_file -text " Choose File  " -command {
	set fd [tk_getOpenFile]
	set source $fd
	set food [open $fd r]
	set data_f [read $food]
	puts $data_f	
	close $food}
grid .label_source .source .choose_file
#Data deal($data_f -> F?)******************************
#switch $num {
#	"0" {set food "Mcdonalds"}
#	"1" {set food "Moss"}
#	"2" {set food "7-11"}
#	"3" {set food "Family"}
#	"4" {set food "Pizza Hot"}
#	"5" {set food "Costco"}
#	"default" {set food "X"} }
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
		set num [ expr round(rand()*100000)%5 ]
		switch $num {
			"0" {set food "F0"}
			"1" {set food "F1"}
			"2" {set food "F2"}
			"3" {set food "F3"}
			"4" {set food "F4"}
			"5" {set food "F5"}
			"default" {set food "F6"} }
		puts $file "$month/$date $food"}
	close $file}
#puts $file "$month/$date $data_f"}
#puts $file "$month/$date $food"}
#Operation*********************************************
grid .label_month .month .label_day1 .day1 .label_day2 .day2 -sticky w
grid .let -row 4 -column 1 -sticky e