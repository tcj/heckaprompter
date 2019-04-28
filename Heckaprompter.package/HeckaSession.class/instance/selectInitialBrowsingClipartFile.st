unused
selectInitialBrowsingClipartFile
	"have we saved the text?  if not, we cannot browse it"
	^ currentText isNew
		ifTrue: [ nil ]
		ifFalse: [ self browsingClipartFile: self textClipartFile ]