rendering
renderClipartId: clipartId on: html
	| svg | 
	svg := self session clipartForId: clipartId.
	html anchor
		class: 'svg';
		callback: [ self browseClipart: svg ];
		with: [
			html object 
				class: 'chooserClipartItem';
				type: 'image/svg+xml' seasideMimeType;
				width:  100;
				height: 100;
				standby: 'loading image';
				url: (self session urlForClipartFile: svg);
				with: 'Your browser doesn''t support SVG'. ].