rendering
renderAnchorText: aString enabledBlock: conditionalBlock callback: aCallbackBlock on: html
	conditionalBlock value
		ifTrue: [ html anchor
			callback: aCallbackBlock;
			with: aString ]
		ifFalse: [ html text: aString ]
		