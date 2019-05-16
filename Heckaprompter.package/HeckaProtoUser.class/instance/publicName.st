names
publicName
	^ fakeId
		ifNil: [ self fullName ]
		ifNotNil: [:fake | fake fullName ]