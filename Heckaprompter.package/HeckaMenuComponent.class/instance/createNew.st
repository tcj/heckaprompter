callbacks
createNew
	self session newRandomText.
	^ self session makeActive: HeckaTextEntry.
