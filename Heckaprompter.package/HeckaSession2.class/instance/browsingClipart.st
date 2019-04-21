accessing
browsingClipart
	"handle situations where the text has not been saved"
	"while also handling the 'save and browse' option"
	^ browsingClipart ifNil: [ browsingClipart := self selectInitialBrowsingClipart ]