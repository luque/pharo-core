initializeStackPane
	
	self stackPane
		displayBlock: [ :aContext | self columnsFor: aContext ];
		items: (self session stackOfSize: self debugger class defaultStackSize) ;
		whenSelectedItemChanged: [ :aContext | 
			"Set the selection before, as debugAction removes the link with the debugger. "
			self debugger stack setSelectedItem: aContext.
			self debugAction ]
		