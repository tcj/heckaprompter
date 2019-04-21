running
go
	| previousAnswer answer |
	"default behavior is to go into text entry immediately
	to showcase the idea, whether a user is logged in or not."
	answer := #createNew.

	[ answer notNil ] whileTrue: [
		Transcript show: answer; cr.
		previousAnswer := answer.
		answer := answer caseOf: {
			[ #browseMode ] -> [ self call: self browseComponent ].
			[ #createNew ] -> [
			 	self session newRandomText.
				self call: self textEntryComponent ].
			[ #saveAndBrowse ] -> [ self saveAndBrowse ].
			[ #saveAndNew ] -> [ self saveAndNew ].
			[ #logout ] -> [ self logout.  #createNew ].
			[ #login ] -> [ self login.  ].
		} otherwise: [ answer := self call: self nullComponent ]
	].
	
