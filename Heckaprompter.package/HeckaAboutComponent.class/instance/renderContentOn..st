as yet unclassified
renderContentOn: html
	self renderMenuOn: html.
	html heading level: 2; with: 'heckaprompter'.
	html heading level: 3; with: 'a web-based writing toy which is intended to be fun'.
	html heading level: 4; with: 'by tim johnson.'.
	html paragraph with: 'a project for ITEC 333 9018) and ITEC 899 (2019), advising by Dr. Patricia Donohue.'.
	self renderVersionInfoOn: html.
	html anchor
		callback: [ self answer: #stayHere ];
		with: 'ok thanks, back to it'.