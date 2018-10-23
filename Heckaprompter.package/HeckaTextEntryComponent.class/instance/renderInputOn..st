rendering
renderInputOn: html
	html form
		with: [
		html textArea
			name: '';
			id: 'linedArea';
			columns: '30';
			rows: 4;
			on: #text of: self.
		html div
			class: 'formButtons';
			with: [ 
				html submitButton
					id: 'saveAndBrowse';
					callback: [ self saveAndBrowse ];
					value: 'save and browse' .
				html submitButton 
					id: 'saveAndNew';
					callback: [ self saveAndNew ];
					value: 'save and new'.
			]
		]