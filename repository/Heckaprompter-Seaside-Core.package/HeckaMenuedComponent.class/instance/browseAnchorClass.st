rendering
browseAnchorClass
	^ self activeComponent isBrowser 
		ifTrue: [ 'browseAnchor' ]
		ifFalse: [ 'no' ]