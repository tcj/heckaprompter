browsing support
textsForBrowsing
	"filter texts by what the user selected in HeckaBrowseFilterComponent"
	"and the other filterComponents"
	^ HeckaText findAll: [:text | self filter: text for: #user ]