running
go
	| result |
	result := self call: self ssoComponent.
	Transcript show: 'login component: ', result printString; cr.
	self answer: result