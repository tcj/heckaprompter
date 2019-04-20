rendering
renderBlurbOn: html
	html figureCaption
		class: 'blurbtext';
		with: [ html heading level: 2; with: self session textBlurb contents  ].
	html figureCaption: [ 
		html anchor
			onClick: ( html javascript alert: (self session currentTextBlurb source destination ) );
			url: 'javascript:void(0)';
			with: [ html text: HeckaUnicode iconForInformation ].
		html space.		
		html anchor
		callback: [ self session newRandomBlurb];
		with: [html text: HeckaUnicode iconForSkip ] ]