running
setUp
	clipartReg := HeckaClipartFileRegistry sample.
	blurbReg := HeckaBlurbFileRegistry sample.
	blurbFile := blurbReg randomFile.
	blurb := blurbFile asBlurb.
	clipartFile := clipartReg randomFile.
	user := HeckaUser new.
	HeckaText setStore: SDMemoryStore new.
	HeckaText warmUp. 
	text := HeckaText
		newForUser: user
		fromClipart: clipartFile
		andBlurb: blurb.
	text save.