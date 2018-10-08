rendering
renderContentOn: html
	self svgFileNames do: [:svgFile |  
		| url |
		url := self server, '/', svgFile.
		html object 
			type: 'image/svg+xml' seasideMimeType;
			width: 512;
			height: 512;
			standby: 'loading image';
			url: url;
			with: 'Your browser doesn''t support SVG'.
	]