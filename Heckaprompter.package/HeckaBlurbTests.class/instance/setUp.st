as yet unclassified
setUp
	tempDir := self tempDirectory.
	tempFileNameUser := '0303tx.txt'.
	tempFileNameUrl := '0439ur.txt'.
	self writeTestFileNamed: tempFileNameUser fromString: self sampleUserString.
	self writeTestFileNamed: tempFileNameUrl fromString: self sampleUrlString.
	ffpanUser := (tempDir entryAt: tempFileNameUser) fullName.
	ffpanUrl := (tempDir entryAt: tempFileNameUrl) fullName.
	userBlurb  := HeckaBlurb fromFileNamed: ffpanUser.
	urlBlurb := HeckaBlurb fromFileNamed: ffpanUrl.