as yet unclassified
tearDown
	{ tempFileNameUser . tempFileNameUrl } do: [:fn | 
		self tempDirectory deleteFileNamed: fn ].