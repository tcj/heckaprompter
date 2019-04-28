rendering
renderTextsFrom: texts on: html
	texts
		ifEmpty: [ html space ]
		ifNotEmpty: [:cache |
			cache do: [:text | html paragraph: [ html text: text text ] ] ].