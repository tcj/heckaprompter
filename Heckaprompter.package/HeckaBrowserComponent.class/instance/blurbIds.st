rendering
blurbIds
	| ids myTexts |
	ids := Set new.
	myTexts := texts select: [:text | text clipartId = self session currentClipart uniqueId ].
	myTexts do: [:text | ids add: text blurbId ].
	^ ids