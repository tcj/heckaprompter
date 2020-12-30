as yet unclassified
renderContentOn: html
	"would be nice to know (& display) the last component which #answer:ed and what it answered"
	super renderContentOn: html.
	html heading
		level: 3;
		with: 'Something strange and unexpected may have occurred.'.
	html paragraph: self requestContext.
	html paragraph: self requestContext application.
	html paragraph: self requestContext session.
	html unorderedList: [ 
		thisContext stack do: [:line | html listItem: line ] ].
"	self requestContext inspect.
	thisContext inspect."