initialize-release
initialize
	super initialize.
	menuComponent := HeckaMenuComponent new.
	textEntryComponent := HeckaTextEntryComponent new.
	browseComponent := HeckaBrowserComponent new.
	loginComponent := HeckaLoginComponent new.

"	self currentComponent: self textEntryComponent."
"	theme := JQBaseTheme default."
