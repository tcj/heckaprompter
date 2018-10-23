accessing
userText
	^ self selectedUser 
		ifNil: ['everyone']
		ifNotNil: [:user | user shortName ]