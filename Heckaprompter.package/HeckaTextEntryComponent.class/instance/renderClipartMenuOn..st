rendering
renderClipartMenuOn: html
	html figureCaption: [ 
"				html anchor
		callback: [ self lightbox: (self clipartInfoComponent clipart: self session currentClipart)];
		with: 'i2'."
		html space.
		html anchor
			onClick: ( html javascript alert: (self session currentClipart fileName) );
			url: 'javascript:void(0)';
			with: [ html text: 'i' ].
		html space.				
		html anchor
			callback: [ self session newRandomClipart ];
			with: [html text: 'skip'] 
	].