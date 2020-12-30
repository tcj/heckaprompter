as yet unclassified
renderVersionInfoOn: html
	| package workingCopy |
	package := PackageInfo named: 'Heckaprompter'.
	workingCopy := package workingCopy.
	html heading level: 2; with: 'version info:'.
	html paragraph with: workingCopy description.
	html heading level: 3; with: 'ancestor:'.
	html paragraph with: [ | ancestor |
		ancestor := [ workingCopy ancestry ancestors first ] on: Error do: [ nil ].
		ancestor 
			ifNil: [ html text: 'n/a' ]
			ifNotNil: [ 
				html paragraph: ancestor name.
				html paragraph: [ html text: ancestor date.  html space.  html text: ancestor time. ].
				html heading level: 4; with: 'commit message:'.
				html paragraph: ancestor  message. ] ].