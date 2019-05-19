rendering
renderBlurbId: aBlurbId on: html
	| blurb | 
	blurb := self session blurbRegistry blurbForId: aBlurbId.
	html anchor
		callback: [ self session browse: blurb ];
		with: [ html paragraph: blurb contents ].