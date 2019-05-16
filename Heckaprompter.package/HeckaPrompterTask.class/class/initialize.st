as yet unclassified
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'demo'.
	application 
		preferenceAt: #sessionClass put: HeckaSession.
		
	application configuration 
		addParent: HeckaConfiguration instance;
		addParent: OAuth2GoogleConfiguration instance.

	application addLibrary: HeckaStyleLibrary.
"
HeckaPrompterTask initialize
"