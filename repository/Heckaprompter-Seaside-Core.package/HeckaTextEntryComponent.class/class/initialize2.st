as yet unclassified
initialize2
"	| application |
	application := WAAdmin register: self asApplicationAt: 'heckaprompter/basic'.
	application 
		preferenceAt: #sessionClass put: HeckaSession.
		
	application configuration 
		addParent: HeckaConfiguration instance.
"
"	application
		preferenceAt: #scriptGeneratorClass put: JQScriptGenerator.
	application 
		addLibrary: JQDevelopmentLibrary;
		addLibrary: JQUiDevelopmentLibrary.
"
"	application
		addLibrary: PTDevelopmentLibrary;
		addLibrary: SUDevelopmentLibrary."
"		addLibrary: SUComponentLibrary"
"		addLibrary: SUAllTestLibrary"


"
HeckaTextEntryComponent initialize.
"