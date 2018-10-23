rendering
renderClipartId: clipartId on: html
	| svg | 
	svg := self session clipartRegistry fileAtId: clipartId.
	html anchor
		class: 'svg';
		callback: [ self chooseClipart: svg ];
		with: [
			html object 
				class: 'chooserClipartItem';
				type: 'image/svg+xml' seasideMimeType;
				width:  100;
				height: 100;
				standby: 'loading image';
				url: (self session urlForClipart: svg);
				with: 'Your browser doesn''t support SVG'. ].