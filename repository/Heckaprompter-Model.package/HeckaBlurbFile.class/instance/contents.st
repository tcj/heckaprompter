other
contents
	| file  contents |
	file := dirent readStream ascii.
	[
		contents := file ascii contents.
	] ensure: [ file close ].
	^ contents 