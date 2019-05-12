rendering
renderBlurbOn: html
	| blurb |
	blurb := self session blurbRegistry blurbForText: workingText.
	html figureCaption
		class: 'blurbtext';
		with: [ html heading level: 2; with: blurb contents  ].
	html figureCaption: [ 
		html anchor
			onClick: ( html javascript alert: blurb source destination );
			url: 'javascript:void(0)';
			with: [ html text: HeckaUnicode iconForInformation ].
		html space.		
		html anchor
		callback: [ self newRandomBlurb];
		with: [html text: HeckaUnicode iconForSkip ] ]