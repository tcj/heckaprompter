browsing
selectInitialBrowsingClipart
	"have we saved the text?  if not, we cannot browse it"
	^ currentText isNew
		ifTrue: [ nil ]
		ifFalse: [ browsingClipart := self textClipart ]