rendering
renderInputOn: html
	html form
		with: [
		html textArea
			name: '';
			id: 'linedArea';
			columns: '30';
			rows: 4;
			on: #text of: workingText.
		html div
			class: 'formButtons';
			with: [ 
				html submitButton
					id: 'saveAndBrowse';
					callback: [ self answer: #saveAndBrowse ];
					value: 'save and browse' .
				html submitButton 
					id: 'saveAndNew';
					callback: [ self answer: #saveAndNew ];
					value: 'save and new'.
			]
		]