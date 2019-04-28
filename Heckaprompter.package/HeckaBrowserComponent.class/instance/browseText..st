callbacks
browseText: aText
	"so annoying, this conversion between IDs and objects, due to my
	initial design decision, thinking I had to overcome a shortcoming in 
	SDActiveRecord which wasn't actually there"
	self browseClipartFile: (self session clipartFileForId: aText clipartId).
	self browseBlurb: (self session blurbForId: aText blurbId).
