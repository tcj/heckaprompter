as yet unclassified
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'heckaprompter/prompter'.
	application 
		preferenceAt: #sessionClass put: HeckaSession.
		
	application configuration 
		addParent: HeckaConfiguration instance.

"	application
		preferenceAt: #scriptGeneratorClass put: JQScriptGenerator.
	application 
		addLibrary: JQDevelopmentLibrary;
		addLibrary: JQUiDevelopmentLibrary."
		
	application
		addLibrary: HeckaStyleLibrary.

"	application
		addLibrary: PTDevelopmentLibrary;
		addLibrary: SUDevelopmentLibrary."
"		addLibrary: SUComponentLibrary"
"		addLibrary: SUAllTestLibrary"


"
HeckaPrompterComponent initialize.
"