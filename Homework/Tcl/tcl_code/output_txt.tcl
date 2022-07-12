label .label_output -text "Output Directory :"
entry .output -width 12 -text output

button .output_path -text " Output Path " -command {
	set txtOut [tk_chooseDirectory]
	if {$txtOut eq ""} {
		label .l -text "No directory select"
	} else {
		set output $txtOut
		set outputFile [open FoodList.txt w]
		puts $outputFile "Hellow, World!"
		close $outputFile
	}	
}
grid .label_output .output .output_path
#/$txtOut/
