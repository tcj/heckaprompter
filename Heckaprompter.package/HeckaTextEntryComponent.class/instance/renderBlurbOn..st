rendering
renderBlurbOn: html
	html figureCaption
		class: 'blurbtext';
		with: [ html heading level: 2; with: self session currentBlurb contents  ].
	html figureCaption: [ 
		html anchor
		callback: [ self session newRandomBlurb];
		with: [html text: 'skip'] ]