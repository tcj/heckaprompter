as yet unclassified
setUp
	clipartReg := HeckaClipartFileRegistry sample.
	blurbReg := HeckaBlurbFileRegistry sample.
	blurbFile := HeckaBlurbFileRegistry atRandom.
	blurb := blurbFile asBlurb.
	clipartFile := clipartReg randomFile.
	user := HeckaUser new.
	text := HeckaTextFull
		newFromUser: user
		onClipart: clipartFile
		andBlurb: blurb.