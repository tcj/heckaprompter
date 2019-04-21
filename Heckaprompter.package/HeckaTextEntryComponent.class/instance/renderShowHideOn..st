unused
renderShowHideOn: html
	html anchor
		onClick: ( (html jQuery: '.centered100' ) show );
		url: 'javascript:void(0)';
		with: 'un'.	
	html space.
	html anchor
		onClick: ( (html jQuery: '.centered100' ) hide );
"						css: (Dictionary newFrom:
			 { 'opacity' -> ((0.1 to: 0.9 by: 0.1) atRandom) } ) );"
		url: 'javascript:void(0)';
		with: 'hide'.