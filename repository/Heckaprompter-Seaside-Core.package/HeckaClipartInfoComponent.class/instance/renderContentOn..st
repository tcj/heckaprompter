rendering
renderContentOn: html
	html paragraph: clipart fileName. 
	html anchor
		callback: [ self answer: nil ];
		with: 'ok'.