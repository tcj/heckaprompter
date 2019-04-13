as yet unclassified
fromHeckaClipartFile: aHeckaClipartFile
	^ self new 
		source: (HeckaSource fromClipartFile: aHeckaClipartFile);
		storage: aHeckaClipartFile;
		yourself.