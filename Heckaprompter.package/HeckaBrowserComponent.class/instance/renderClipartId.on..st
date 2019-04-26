rendering
renderClipartId: clipartId on: html
	| svg | 
	svg := self session clipartFileForId: clipartId.
	html anchor
		class: 'svg';
		callback: [ self browseClipart: svg ];
		with: [
			html object 
				class: (self classForClipartId: clipartId);
				type: 'image/svg+xml' seasideMimeType;
				width:  100;
				height: 100;
				standby: 'loading image';
				url: (self session urlForClipartFile: svg);
				with: 'Your browser doesn''t support SVG'. ].