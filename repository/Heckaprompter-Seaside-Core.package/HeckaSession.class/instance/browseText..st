browsing support
browseText: aText
	"so annoying, this conversion between IDs and objects, due to my
	initial design decision, thinking I had to overcome a shortcoming in 
	SDActiveRecord which wasn't actually there"
	self browse: (self clipartRegistry clipartFileForText: aText).
	self browse: (self blurbRegistry blurbForText: aText).
