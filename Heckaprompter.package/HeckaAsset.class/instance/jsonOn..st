printing
jsonOn: aRenderer
	| d | 
	d := Dictionary newFrom: { 
		#source -> [ source jsonOn: aRenderer ].
		#storage -> [ storage jsonOn: aRenderer ].
		#contents -> [ contents jsonOn: aRenderer ].
	}.  
	^ d jsonOn: aRenderer
	