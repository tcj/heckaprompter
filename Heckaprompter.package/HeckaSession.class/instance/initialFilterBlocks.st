accessing
initialFilterBlocks
	
	^ Dictionary newFrom: {
		#user -> self textFilterBlockOrTrueFor: #user.
		#blurb -> self textFilterBlockOrTrueFor: #blurb.
		#clipartFile -> self textFilterBlockOrTrueFor: #clipart. }