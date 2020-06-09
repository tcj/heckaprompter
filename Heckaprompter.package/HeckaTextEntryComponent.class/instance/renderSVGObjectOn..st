rendering
renderSVGObjectOn: html
	html object 
		class: 'centered100';
		id: #clipartSVG;
		type: 'image/svg+xml' seasideMimeType;
		width:  imageWidth;
		height: imageWidth;
		standby: 'loading image';
		url: self textClipartUrl;
		with: 'Your browser doesn''t support SVG'. 