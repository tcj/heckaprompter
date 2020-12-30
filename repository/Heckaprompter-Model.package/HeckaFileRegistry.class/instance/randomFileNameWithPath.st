as yet unclassified
randomFileNameWithPath
	| fn |
	self flag: #uhoh.
	fn := self randomFileName.
	"Transcript show: fn ; cr."
	^ ((fn findString: '/') = 0)
		ifTrue: [
			"Blurbs do not have their complete path in the 
			registry for some reason;  still not quite sure why!"
			"Transcript show:  'missing full path: ', fn; cr."
			 self path, '/', fn ]
		ifFalse: [ fn]