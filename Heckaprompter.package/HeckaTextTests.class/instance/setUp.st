as yet unclassified
setUp
	clipartReg := HeckaClipartFileRegistry sample.
	blurbReg := HeckaBlurbFileRegistry sample.
	blurbFile := HeckaBlurbFile sample.
	blurb := HeckaBlurb fromHeckaBlurbFile: blurbFile.
	clipartFile := clipartReg randomFile.
	user := HeckaUser new.
	text := HeckaTextFull
		newFromUser: user
		onClipart: clipartFile
		andBlurb: blurb.