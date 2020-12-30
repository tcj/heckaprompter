rendering
renderAccountInfoOn: html
	| user | 
	user := self session user.
	html table: [
		html tableRow: [ 
			html tableData: 'user short name:' .
			html tableData: [ html text: user shortName ] ].
		html tableRow: [ 
			html tableData: 'user public name*:'.
			html tableData: [ 
				html text: user publicName.
				html space.
				html anchor
					callback: [self getNewFakeId ];
					with: 'get new fake id'.
				html space.
				html anchor 
					callback: [self useRealName];
					with: 'use real name'.  ].
		].
		html tableRow: [
			html tableData: 'unique id:'.
			html tableData: [
				html text: user uniqueId ].
		].
	].
	html paragraph: '* public name is shown to other users.  can be your real name or a fake ID generated from blurb text.'.
	