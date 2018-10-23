as yet unclassified
randomFileNameWithPath
	| fn |
	self flag: #uhoh.
	fn := self files keys atRandom.
	^ ((fn findString: '/') = 0)
		ifTrue: [
			Transcript show:  'missing full path: ', fn; cr.
			 self path, '/', fn ]
		ifFalse: [ fn]