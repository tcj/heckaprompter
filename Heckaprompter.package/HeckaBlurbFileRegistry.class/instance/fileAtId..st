as yet unclassified
fileAtId: anUniqueId
	"for whatever reason BlurbFileRegistry doesn't have full path as key"
	^ self files at: (anUniqueId findTokens: '/') last