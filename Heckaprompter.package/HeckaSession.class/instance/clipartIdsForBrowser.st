browsing
clipartIdsForBrowser
	"must be filtered properly"
	^ Set withAll: (textsForBrowsing collect: [:ea | ea clipartId ]).
