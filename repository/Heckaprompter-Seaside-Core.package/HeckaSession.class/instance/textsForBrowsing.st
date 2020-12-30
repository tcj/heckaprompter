browsing support
textsForBrowsing
	"filter texts by what the user selected in HeckaBrowseFilterComponent"
	"UMM: and the other filterComponents?"
	"No:  I did not choose to do it that way."
	self flag: #umm.
	^ HeckaText findAll: [:text | self filter: text for: #user ]