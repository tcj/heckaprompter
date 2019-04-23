support for rendering
urlForClipartFile: aClipartFile
	^ (self application preferenceAt: #heckaBareURL), '/', aClipartFile fileName
	