as yet unclassified
testUrl
	self assert: [ sourceUrl type = #url ].
	self assert: [ sourceUrl destination = 'https://archive.org/stream/in.ernet.dli.2015.187065/2015.187065.Letters-Of-Marcel-Proust_djvu.txt' ].
	