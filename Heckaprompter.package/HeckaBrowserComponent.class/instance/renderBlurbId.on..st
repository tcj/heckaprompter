rendering
renderBlurbId: aBlurbId on: html
	| blurb | 
	blurb := HeckaBlurb fromHeckaBlurbFile: (self session blurbRegistry fileAtId: aBlurbId).
	html paragraph: blurb contents.