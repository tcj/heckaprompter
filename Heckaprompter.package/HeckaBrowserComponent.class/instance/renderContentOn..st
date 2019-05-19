rendering
renderContentOn: html
	"cache texts during this render phase"
	textCache := self session textsForBrowsing.
	self renderMenuOn: html.
	html render: self browseFilterComponent.
	self session browseMode caseOf: {
		[HeckaBrowseByClipart instance] -> [
			html render: (self clipartComponent chooseFromTexts: self textCache).
			html render: (self blurbComponent chooseFromTexts: self textCache) ].
		[HeckaBrowseByBlurb instance ] -> [
			html render: (self blurbComponent chooseFromTexts: self textCache) .			
			html render: (self clipartComponent chooseFromTexts: self textCache) ]. }.
	textCache
		ifEmpty: [ 
			"no texts in sandstone database yet, or no texts matching selection/filter criteria"
			self renderFreshStartOn: html ]
		ifNotEmpty: [
			html div 
				class: 'textDisplay';
				with: [ self renderFilteredTextsFrom: textCache on: html. ].
		].
