class initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'heckaprompter/svgtest'.
"	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator.
	application 
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQAllFunctionalTestsLibrary.
"

"
HPSVGComponent initialize.
"