rendering
renderClipart: clipartFile on: html
	html anchor
		class: 'svg';
		callback: [ self browseClipart: clipartFile ];
		with: [
			html object 
				class: (self classForClipart: clipartFile);
				type: 'image/svg+xml' seasideMimeType;
				width:  100;
				height: 100;
				standby: 'loading image';
				url: (self session urlForClipartFile: clipartFile);
				with: 'Your browser doesn''t support SVG'. ].