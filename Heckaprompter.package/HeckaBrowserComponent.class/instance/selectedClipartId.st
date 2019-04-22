selections
selectedClipartId
	^ [ self session browsingClipart ]
		on: HeckaNoSelectedTextError
		do: [ self texts first clipartId ]