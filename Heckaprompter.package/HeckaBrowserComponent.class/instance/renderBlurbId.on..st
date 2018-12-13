rendering
renderBlurbId: aBlurbId on: html
	| blurb | 
	blurb := self session blurbForId: aBlurbId.
	html anchor
		callback: [ self browseBlurb: blurb ];
		with: [ html paragraph: blurb contents ].