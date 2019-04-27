as yet unclassified
renderContentOn: html
	html div
		class: 'hScroll', self browsingWhat capitalized;
		with: [ self items do: [:item | self renderItem: item on: html ] ].