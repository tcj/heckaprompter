rendering
renderBlurbsFrom: texts filteredBy: aFilterBlock on: html
"	self flag: #sandstoneify."
	self session browsingClipartFile
		ifNil: [ "no selected clipart"
			 html space ]
		ifNotNil: [ | textsForClipart |
			textsForClipart := texts select: aFilterBlock.
			(self blurbIdsFrom: textsForClipart) do: [:blurbId | 
				self renderBlurbId: blurbId on: html ] ].