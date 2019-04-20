accessing
browsingClipart

	^ browsingClipart ifNil: [browsingClipart := self textClipart]