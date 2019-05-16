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
						thenDo: [:text | self renderText: text on: html ] ] ].