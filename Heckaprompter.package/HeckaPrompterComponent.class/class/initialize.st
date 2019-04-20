as yet unclassified
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'demo'.
	application 
		preferenceAt: #sessionClass put: HeckaSession.
		
	application configuration 
		addParent: HeckaConfiguration instance;
		addParent: WCOAuth2JsonFileConfiguration instance;
		addParent: ZnOAuth2GoogleConfiguration instance.

	WAAdmin register: ZnOAuth2CallbackHandler at: 'heckaoauth2'.

	application filter configuration at: #exceptionHandler put: WADynamicVariablesErrorHandler.
	
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