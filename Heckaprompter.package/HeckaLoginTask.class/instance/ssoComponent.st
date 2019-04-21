accessing
ssoComponent

	^ ssoComponent ifNil: [ssoComponent := HeckaSSOComponent new]