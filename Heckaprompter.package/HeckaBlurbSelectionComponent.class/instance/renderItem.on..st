as yet unclassified
renderItem: anItem on: html
	html div
		class: 'hBlurb';
		with: [
			html anchor
				class: 'blurbText';
				callback: [ self session browsingBlurb: anItem ];
				with:  anItem contents ]