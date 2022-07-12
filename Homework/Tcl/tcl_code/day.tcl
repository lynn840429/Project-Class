label .label_month -text "Month :"
entry .month -width 6 -textvariable m

label .label_day1 -text "Day :"
entry .day1 -width 6 -textvariable d1

label .label_day2 -text "~"
entry .day2 -width 6 -textvariable d2

grid .label_month .month .label_day1 .day1 .label_day2 .day2

button .let -text "Let's eat !!" -command {
set file [open day.txt w]
for {set date $d1} {$date <= $d2} {incr date} {
		puts $file "$m/$date" 
	}
close $file
}
grid .let