rendering
renderBrowseModeSelectionOn: html
	html paragraph: [
		html text: 'browse by:'.
		html space.
		self session browsingByBlurb
			ifTrue: [ 
				html anchor
					callback: [self session browseByClipart];
					with: 'clipart'. ]
			ifFalse: [ html text: 'clipart' ].
		html space.
		self session browsingByClipart
			ifTrue: [ 
				html anchor
					callback: [ self session browseByBlurb];
					with: 'blurb'. ]
			ifFalse: [ html text: 'blurb' ].
	]
