rendering
renderBlurbId: aBlurbId on: html
	| blurb | 
	blurb := HeckaBlurb fromHeckaBlurbFile: (self session blurbRegistry fileAtId: aBlurbId).
	html anchor
		callback: [ self chooseBlurb: blurb ];
		with: [ html paragraph: blurb contents ].