clipart
urlForClipartFile: aClipartFile
	^ (self application preferenceAt: #heckaBareURL), '/', aClipartFile fileName
	