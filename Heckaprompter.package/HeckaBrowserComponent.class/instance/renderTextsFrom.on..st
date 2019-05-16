rendering
renderTextsFrom: texts on: html
	texts
		ifEmpty: [ html space ]
		ifNotEmpty: [:cache |
			cache do: [:text | | user |
				user := HeckaUser atId: text userId ifAbsent: [ HeckaLoggedOutUser instance ].
				html quote: [ html text: text text ].
				html citation: [ user publicName  ] ] ].