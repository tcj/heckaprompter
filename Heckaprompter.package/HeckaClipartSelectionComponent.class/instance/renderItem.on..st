as yet unclassified
renderItem: anItem on: html
	html div
		class: 'hClipart';
		with: ["	| svg | 
			svg := self session clipartForId: anItem."
			html anchor
				class: 'svg';
				callback: [ self session browsingClipart: anItem ];
				with: [ 
					html object 
						class: (self classForClipartFile: anItem);
						type: 'image/svg+xml' seasideMimeType;
						width:  100;
						height: 100;
						standby: 'loading image';
						url: (self session urlForClipartFile: anItem );
						with: 'Your browser doesn''t support SVG'. ] ]