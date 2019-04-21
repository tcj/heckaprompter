rendering
clipartIdsSorted
	"wouldn't it be nice to do this client-side"
	| selectedId idSet sorted texts |
	idSet := Set new.
	texts := self texts.
	texts do: [:text | idSet add: text clipartId ].
	"handle a fresh component where there is no selected clipart yet"
	selectedId := self selectedClipart 
		ifNil: [ texts first clipartId ]
		ifNotNil: [:clipart | clipart uniqueId ].
	sorted := OrderedCollection new.
	sorted add: selectedId.
	idSet remove: selectedId.
	sorted addAll: idSet.
	^ sorted