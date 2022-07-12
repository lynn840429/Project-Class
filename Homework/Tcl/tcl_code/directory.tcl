#set dir [tk_chooseDirectory \
#       -initialdir ~ -title "Choose a directory"]
set dir [tk_chooseDirectory]		
if {$dir eq ""} {
   label .l -text "No directory selected"
} else {
   label .l -text "Selected $dir"
}
grid .l