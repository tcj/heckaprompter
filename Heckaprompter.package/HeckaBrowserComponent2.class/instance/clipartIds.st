rendering
clipartIds
	| ids |
	ids := Set new.
	texts do: [:text | ids add: text clipartId ].
	^ ids