rendering
renderContentOn: html
	html div
		class: 'hScroll', self browsingWhat capitalized;
		with: [ | items first |
			items := self filteredItems.
			items ifNotEmpty: [
				"if there is a selected item of this type, show it first"
				first := items remove: self chosenItem ifAbsent: [ nil ].
				first ifNotNil: [:f | self renderItem: f on: html. ].
				"now show the rest"
				items do: [:item | self renderItem: item on: html ] ] ]