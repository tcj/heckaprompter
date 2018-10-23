as yet unclassified
newForUser: aUser fromClipart: aClipart andBlurb: aBlurb
	^ self new
		userId: aUser uniqueId;
		clipartId: aClipart uniqueId;
		blurbId: aBlurb uniqueId;
		yourself.