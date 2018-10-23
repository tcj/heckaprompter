rendering
renderAllTextsOn: html
	html heading
		level: 3; with: [ html text: ('{1}''s texts (total: {2})' format: { self userText . texts size printString }) ].
		
	texts do: [:aText | self renderText: aText on: html ].