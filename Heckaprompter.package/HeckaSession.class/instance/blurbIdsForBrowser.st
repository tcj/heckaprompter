browsing
blurbIdsForBrowser
	"must be filtered properly"
	^ Set withAll: (self textsForBrowsing collect: [:ea | ea blurbId ]).
