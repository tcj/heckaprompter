rendering
renderFilteredTextsFrom: texts on: html
	self session browsingClipart
		ifNil: [ html space ]
		ifNotNil: [ 
			self session browsingBlurb
				ifNil: [ html space ]
				ifNotNil: [ 
					texts select: [:text |
						(text usesClipart: self session browsingClipart)
							and: [ text usesBlurb: self session browsingBlurb ] ]
						thenDo: [:text | html paragraph: [ html text: text text ] ] ] ].