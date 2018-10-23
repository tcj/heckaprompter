accessing
clipartInfoComponent

	^ clipartInfoComponent ifNil: [clipartInfoComponent := HeckaClipartInfoComponent new]