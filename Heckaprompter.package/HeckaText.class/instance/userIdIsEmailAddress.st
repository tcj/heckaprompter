testing
userIdIsEmailAddress
	^ self userId includesAllOf: '@.'
	