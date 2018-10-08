utilities
urlForClipart: aClipartFile
	^ (self application preferenceAt: #heckaBareURL), '/', aClipartFile fileName
	