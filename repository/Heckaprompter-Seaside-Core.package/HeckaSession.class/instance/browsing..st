browsing support
browsing: anObject
	"not a setter"
	"what have we selected for that type of browser category?"
	^ self browsingSelection at: anObject browserCategory ifAbsent: [ nil ]