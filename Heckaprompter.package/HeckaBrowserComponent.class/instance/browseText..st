callbacks
browseText: aText
	self browseClipart: (self session clipartForId: aText clipartId).
	self browseBlurb: (self session blurbForId:  aText blurbId).
