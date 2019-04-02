accessing
tempDir

	^ tempDir ifNil: [tempDir := self tempDirectory]