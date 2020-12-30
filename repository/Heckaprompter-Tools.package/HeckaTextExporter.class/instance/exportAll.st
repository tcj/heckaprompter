actions
exportAll
	| texts exportDir | 
	texts := HeckaText allInstances.
	exportDir := FileDirectory default directoryNamed: 'textport-', (Time now asNanoSeconds asString allButLast: 3).
	exportDir assureExistence.
	texts do: [:text |  | file |
		file := exportDir newFileNamed: text id, '.json'.
		file 
			ifNil: [ self error: 'could not open file for export' ]
			ifNotNil: [ [ text asDictionary asJson putOn: file ] ensure: [file close] ].
	]
