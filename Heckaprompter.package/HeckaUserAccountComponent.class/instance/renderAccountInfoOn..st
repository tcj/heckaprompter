rendering
renderAccountInfoOn: html
	html table: [
		html tableRow: [ 
			html tableData: 'user short name:' .
			html tableData: [ html text: self session user shortName ] ].
		html tableRow: [ 
			html tableData: 'user public name*:'.
			html tableData: [ 
				html text: self session user publicName.
				html space.
				html anchor
					callback: [self getNewFakeId ];
					with: 'get new fake id'.
				html space.
				html anchor 
					callback: [self useRealName];
					with: 'use real name'.  ].
		]
	].
	html paragraph: '* public name is shown to other users.  can be your real name or a fake ID generated from blurb text.'.
	