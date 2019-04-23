browsing
clipartIdsForBrowser
	"must be filtered properly"
	^ Set withAll: (self textsForBrowsing collect: [:ea | ea clipartId ]).
