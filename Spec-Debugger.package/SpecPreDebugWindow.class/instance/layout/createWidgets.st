createWidgets

	self instantiateModels: self buildNotifierPaneWidgetsSpec.
	self instantiateModels: self buildButtonWidgetsSpec.
	self widgets keysDo: [ :key | 
		(self perform: ('initialize', key asString capitalized) asSymbol) ].
	
	self setFocusOrder