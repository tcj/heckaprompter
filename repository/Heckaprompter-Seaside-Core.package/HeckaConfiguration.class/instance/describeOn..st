as yet unclassified
describeOn: aConfig
	(aConfig string: #heckaBareURL)
		label: 'URL prefix to SVG files';
		group: #heckaprompter;
		comment: 'Prefix leading to teh SVG filez';
		default: 'http://localhost/svg'.
		
	(aConfig string: #heckaSVGFilePath)
		label: 'SVG file path';
		group: #heckaprompter;
		comment: 'file directory location of SVG files';
		default: '/Library/WebServer/Documents/svg'.
		
	(aConfig string: #heckaBlurbFilePath)
		label: 'blurb file path';
		group: #heckaprompter;
		comment: 'file directory of blurb txt files';
		default: '/Library/WebServer/Documents/txt'.
		
	
		
