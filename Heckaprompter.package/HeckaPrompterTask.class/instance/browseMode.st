callbacks
browseMode
	"Enter browse mode.
	If the current session has a text selected, 
	browse mode will focus on it."
	^ self call: self browseComponent
	
