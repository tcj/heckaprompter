as yet unclassified
renderItem: anItem on: html
	html div
		class: 'hClipart';
		with: [
			html anchor
				class: 'svg';
				callback: [ self session browse: anItem ];
				with: [ 
					html object 
						class: (self classForItem: anItem);
						type: 'image/svg+xml' seasideMimeType;
						width:  100;
						height: 100;
						standby: 'loading image';
						url: (self session urlForClipartFile: anItem );
						with: 'Your browser doesn''t support SVG'. ] ]