accessing
blurbInfoComponent

	^ blurbInfoComponent ifNil: [blurbInfoComponent := HeckaBlurbInfoComponent new blurb: self session textBlurb ].