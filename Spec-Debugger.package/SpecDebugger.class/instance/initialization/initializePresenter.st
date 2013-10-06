initializePresenter
	super initializePresenter.
	
	self stack whenListChanged: [ :aList |
		aList isEmpty ifFalse: [ self stack setSelectedItem: aList first ] ].

	self stack whenSelectedItemChanged: [:aContext |
		self updateToolbarFromContext: aContext.
		self updateCodeFromContext: aContext.
		self updateInspectorsFromContext: aContext.
		self updateStackFromSelectedContext ].
	
	self contextInspector initializeAutoRefresh.