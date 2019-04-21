rendering
blurbIds
	| ids myTexts |
	self flag: #sandstoneify.
	ids := Set new.
	myTexts := self texts select: [:text | text usesClipart: self session browsingClipart ].
	myTexts do: [:text | ids add: text blurbId ].
	^ ids