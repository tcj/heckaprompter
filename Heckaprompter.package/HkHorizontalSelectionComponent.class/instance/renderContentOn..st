as yet unclassified
renderContentOn: html
	html div
		class: 'horizontalScroll';
		with: [ self items do: [:item | self renderItem: item on: html ] ].