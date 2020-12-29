import-export
asDictionary
	^ Dictionary newFrom: {
		#userId -> self userId.
		#clipartid -> self clipartId.
		#blurbId -> self blurbId.
		#text -> self text.
		#sandstone -> (Dictionary newFrom: {
			#ssid -> self id.
			#ssVersion -> self version.
			#ssCreatedOn -> self createdOn.
			#ssUpdatedOn -> self updatedOn.
		}).
	}
	