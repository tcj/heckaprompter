rendering
renderUserFilterOn: html
	html paragraph: [
		html text: 'show texts by:'.
		html space.
		self renderAnchorText: 'everyone' 
			enabledBlock: [ self session browsingEveryone not ] 
			callback: [ self chooseEveryone ]
			on: html .
		html space.
		self renderAnchorText: 'myself'
			enabledBlock: [ self session browsingUser ~= self session user ]
			callback: [ self chooseMyself ]
			on: html.
		html space.
		html anchor 
			callback: [ self chooseUser ];
			with: 'specific user'. ].
