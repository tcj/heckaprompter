as yet unclassified
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'demo'.
	application 
		preferenceAt: #sessionClass put: HeckaSession.
		
	application configuration 
		addParent: HeckaConfiguration instance;
		addParent: ZnOAuth2GoogleConfiguration instance.

	application addLibrary: HeckaStyleLibrary.
"
HeckaPrompterTask initialize
"