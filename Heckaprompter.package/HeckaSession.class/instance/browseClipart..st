accessing
browseClipart: anObject
	browsingClipart ifNotNil: [:c | 
		Transcript show: ('{1} = {2}?' format: { self browsingClipart uniqueId . anObject uniqueId }); cr. ].
	anObject inspect.
	browsingClipart := anObject.