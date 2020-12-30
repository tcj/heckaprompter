private
parseString: aString
	| s | 
	"from user#blabla to user and blabla"
	s := aString readStream.
	self type: (s upTo: $#) asSymbol.
	self destination: s upToEnd.
	
	