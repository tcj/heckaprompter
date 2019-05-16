testing
author
	"handle legacy garbage"
	"and/or make legacy users work/appear"
	self flag: #needsWork.
	^ (self userId = '0101' or: [ self userId = #'logged out' ])
		ifTrue: [ HeckaLoggedOutUser instance ]
		ifFalse: [ self userIdIsEmailAddress
					ifTrue: [ 
						Transcript show: self userId; cr.
						HeckaUser 
							find: [:p | p emailAddress = self userId ]
							ifAbsent: [ HeckaMissingUser instance ]. ]
					ifFalse: [ 
						"a Sandstone id"
						HeckaUser atId: self userId ifAbsent: [ HeckaMissingUser instance ] ] ]