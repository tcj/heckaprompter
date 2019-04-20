rendering
renderSVGObjectOn: html
	html object 
		class: 'centered100';
		id: self objectId;
		type: 'image/svg+xml' seasideMimeType;
		width:  imageWidth;
		height: imageWidth;
		standby: 'loading image';
		url: (self session textClipartUrl);
		with: 'Your browser doesn''t support SVG'. 