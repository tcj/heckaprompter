rendering
renderFilteredTextsFrom: texts on: html
	self session browsingClipartFile
		ifNil: [ html space ]
		ifNotNil: [ 
			self session browsingBlurb
				ifNil: [ html space ]
				ifNotNil: [ 
					texts 
						select: [:text |
							(text usesClipartFile: self session browsingClipartFile)
								and: [ text usesBlurb: self session browsingBlurb ] ]
						thenDo: [:text | | user |
							user := HeckaUser atId: text userId ifAbsent: [ HeckaLoggedOutUser instance ].
							html quote: [ html text: text text ].
							html break.
							html citation: [ html text: ('{1} {2}' format: { HeckaUnicode emdash . user publicName })  ] ] ] ].