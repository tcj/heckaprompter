rendering
renderContentOn: html
	html div
		class: 'hScroll', self browsingWhat capitalized;
		with: [ | items first |
			items := self filteredItems.
			items ifNotEmpty: [
				first := items remove: self chosenItem ifAbsent: [ nil ].
				first ifNotNil: [:f | self renderItem: f on: html. ].
				items do: [:item | self renderItem: item on: html ] ] ]