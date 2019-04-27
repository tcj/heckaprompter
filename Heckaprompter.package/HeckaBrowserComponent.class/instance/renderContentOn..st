rendering
renderContentOn: html
	"cache texts during this render phase"
	textCache := self session textsForBrowsing.
	self renderMenuOn: html.
	html render: self browseFilterComponent.
	html render: (self hScrollTestComponent chooseFrom: self clipartFiles).
	textCache
		ifEmpty: [ "no texts in sandstone database yet, or no texts matching selection/filter criteria"
			self renderFreshStartOn: html ]
		ifNotEmpty: [
			html div 
				class: 'blurbChooser';
				with: [ self renderBlurbsFrom: textCache 
					filteredBy: [:text | text usesClipart: self session browsingClipart ]
					on: html ].
			html div 
				class: 'textDisplay';
				with: [ self renderFilteredTextsFrom: textCache on: html. ].
		].
	
"	self session currentClipart ifNotNil: [:clip | html text: 'chosen clipart: ', clip uniqueId ].
	html break.
	self session currentBlurb ifNotNil: [:blurb | html text: 'chosen blurb: ', blurb uniqueId ]."
