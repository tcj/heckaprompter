rendering
renderBrowseModeSelectionOn: html
	html paragraph: [
		html text: 'browse by:'.
		html space.
		self renderAnchorText: 'clipart'
			enabledBlock: [ self session browsingByBlurb ]
			callback: [self session browseByClipart]
			on: html.
		html space.
		self renderAnchorText: 'blurb'
			enabledBlock: [self session browsingByClipart ]
			callback: [ self session browseByBlurb]
			on: html.
	]
