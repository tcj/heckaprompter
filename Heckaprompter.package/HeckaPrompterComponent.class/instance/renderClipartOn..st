rendering
renderClipartOn: html
	| clipart |
	clipart := self session currentClipart.
	html figure
"		class: 'centeredinh';"
		with: [ 
			html object 
				class: 'centered100';
				type: 'image/svg+xml' seasideMimeType;
				width:  imageWidth;
				height: imageWidth;
				standby: 'loading image';
				url: (self urlForClipart: clipart);
				with: 'Your browser doesn''t support SVG'. 
			html figureCaption: clipart fileName.
			html figureCaption: [ 
				html anchor
					callback: [ self session newRandomClipart ];
					with: [html text: 'skip'] ].
		].