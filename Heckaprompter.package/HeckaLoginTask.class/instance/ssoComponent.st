accessing
ssoComponent

	^ ssoComponent ifNil: [ssoComponent := HeckaSSOComponent3 new]