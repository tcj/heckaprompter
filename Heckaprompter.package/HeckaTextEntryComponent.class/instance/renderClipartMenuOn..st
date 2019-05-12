rendering
renderClipartMenuOn: html
	html figureCaption: [ 
"				html anchor
		callback: [ self lightbox: (self clipartInfoComponent clipart: self session currentClipart)];
		with: 'i2'."
		html space.
		html anchor
			onClick: ( html javascript alert: (self textClipartFile fileName) );
			url: 'javascript:void(0)';
			with: [ html text: HeckaUnicode iconForInformation ].
		html space.				
		html anchor
			callback: [ self newRandomClipart ];
			with: [html text: HeckaUnicode iconForSkip] 
	].