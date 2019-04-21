callbacks
createNew
	"Create and edit a new text."
	self session newRandomText.

	^ self call: self textEntryComponent