rendering
renderText: aText on: html
	| user |
	"aText inspect."
	user := aText author.
	html quote: [ html text: aText text ].
	html break.
	html citation: [ html text: ('{1} {2}' format: { HeckaUnicode emdash . user publicName }) ]