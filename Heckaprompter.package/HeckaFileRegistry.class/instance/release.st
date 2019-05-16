initialize-release
release
	self files ifNotNil: [:f | f do: [:ea | ea release ] ].
	files := nil.