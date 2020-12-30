callbacks
createNew
	"Create and edit a new text."
	| newText |
	newText := self session newRandomText.
	self textEntryComponent edit: newText.
	^ self call: self textEntryComponent