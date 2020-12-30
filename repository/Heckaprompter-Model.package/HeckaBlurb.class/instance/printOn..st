printing
printOn: aStream
	super printOn: aStream.
	aStream 
		nextPut: Character space;
		nextPut: $(;
		nextPutAll: (self contents truncateWithElipsisTo: 14);
		nextPut: $).