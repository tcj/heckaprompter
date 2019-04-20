running
go
	| answer |
	"default behavior is to go into text entry immediately
	to showcase the idea, whether a user is logged in or not."
	answer := self call: self textEntryComponent.

	[ answer notNil ] whileTrue: [
		Transcript show: answer; cr.
		answer := answer caseOf: {
			[ #browseMode ] -> [ self call: self browseComponent ].
			[ #createNew ] -> [
			 	self session newRandomText.
				self call: self textEntryComponent ].
			[ #saveAndBrowse ] -> [ self saveAndBrowse ].
			[ #saveAndNew ] -> [ self saveAndNew ].
			[ #logout ] -> [ self logout ].
			[ #login ] -> [ self login ].
		}
	]
