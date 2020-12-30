names
publicName
	^ self fakeId
		ifNil: [ self fullName ]
		ifNotNil: [:fake | fake fullName ]