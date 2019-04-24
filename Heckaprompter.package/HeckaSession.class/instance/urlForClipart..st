support for rendering
urlForClipart: aClipart
	^ (self application preferenceAt: #heckaBareURL), '/', aClipart storage fileName
	