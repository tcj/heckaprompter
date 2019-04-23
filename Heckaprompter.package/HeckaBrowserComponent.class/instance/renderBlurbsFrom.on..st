rendering
renderBlurbsFrom: texts on: html
"	self flag: #sandstoneify."
	self session browsingClipart
		ifNil: [ html space ]
		ifNotNil: [ | textsForClipart blurbIds |
			textsForClipart := texts select: [:text | text usesClipart: self session browsingClipart ].
			blurbIds := Set withAll: (textsForClipart collect: [:ea | ea blurbId ]).
			blurbIds do: [:blurbId | 
				self renderBlurbId: blurbId on: html ] ].