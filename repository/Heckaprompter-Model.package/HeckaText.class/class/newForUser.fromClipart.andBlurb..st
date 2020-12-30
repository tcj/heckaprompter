as yet unclassified
newForUser: aUser fromClipart: aClipart andBlurb: aBlurb
	"in each case, conversion to id is handled in instance"
	^ self new
		user: aUser;
		clipart: aClipart;	
		blurb: aBlurb;		
		yourself.