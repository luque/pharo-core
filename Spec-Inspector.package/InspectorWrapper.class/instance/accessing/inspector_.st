inspector: anEyeInspector
	
	inspector contents 
		ifNotNil: [ :inspect | 
			inspect owner: nil ].
	inspector contents: anEyeInspector.
	anEyeInspector owner: self.
	anEyeInspector customMenuActions: self customMenuActions.
	anEyeInspector takeKeyboardFocus.
	anEyeInspector initializeAutoRefresh.
	self pushHistory.