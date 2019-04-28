browsing support
browsingClipartFile
	"be sure to handle situations where the text has not been saved"
	"while also handling the 'save and browse' option"
	^ self browsingSelection at: #clipartFile ifAbsent: [nil]