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
			[ #stayHere ] -> [ self call: self textEntryComponent ].
			[ #accountInfo ] -> [ self call: self accountComponent ].
			[ #browseMode ] -> [ self call: self browseComponent ].
			[ #createNew ] -> [ self createNew ].
			[ #saveAndBrowse ] -> [ self saveAndBrowse ].
			[ #saveAndNew ] -> [ self saveAndNew ].
			[ #logout ] -> [ self logout ].
			[ #login ] -> [ self call: self accountComponent ].
		} otherwise: [ answer := self call: self nullComponent ]
	].
	
