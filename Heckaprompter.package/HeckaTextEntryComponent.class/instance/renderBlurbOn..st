unused
renderBlurbOn: html
	html heading
		level: 2;
		with: (self session currentBlurb contents).
	html paragraph
		class: 'blurbskip';
		with: [
		html anchor
			callback: [ self session newRandomBlurb ];
			with: [html text: 'skip'] ].