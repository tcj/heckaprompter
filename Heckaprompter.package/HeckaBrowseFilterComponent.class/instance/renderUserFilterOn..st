rendering
renderUserFilterOn: html
	html paragraph: [
		html text: 'show texts by:'.
		html space.
		html anchor
			callback: [ self chooseEveryone ];
			with: 'everyone'.
		html space.
		html anchor
			callback: [ self chooseMyself ];
			with: 'myself'.
		html space.
		html anchor 
			callback: [ self chooseUser ];
			with: 'specific user'. ].