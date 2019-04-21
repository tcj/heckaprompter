rendering
clipartIds
	| ids |
	ids := Set new.
	self texts do: [:text | ids add: text clipartId ].
	^ ids