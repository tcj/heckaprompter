rendering
clipartIdsSorted
	| selectedId idSet sorted |
	idSet := Set new.
	texts do: [:text | idSet add: text clipartId ].
	selectedId := self session browsingClipart uniqueId.
	sorted := OrderedCollection new.
	sorted add: selectedId.
	idSet remove: selectedId.
	sorted addAll: idSet.
	^ sorted