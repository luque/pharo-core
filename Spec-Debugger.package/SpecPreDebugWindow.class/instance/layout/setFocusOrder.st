setFocusOrder

	self focusOrder removeAll.
	"The focus order of the buttons should be the one
	in which they are added to the window."
	self buildButtonWidgetsSpec pairsDo: [ :k :v | 
		self focusOrder add: (self perform: k) ].		
	self focusOrder add: self notifierPaneWidgetAssociation value