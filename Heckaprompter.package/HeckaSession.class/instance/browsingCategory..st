browsing support
browsingCategory: aSymbol
	"not a setter"
	"what are we browsing for that type of browsing activity"
	^ self browsingSelection at: aSymbol ifAbsent: [ nil ]