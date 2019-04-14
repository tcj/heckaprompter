rendering
children
	"do we have to send all components or just the currently shown components?"
	^ Array with: (self menuComponent ) with: (self currentComponent)