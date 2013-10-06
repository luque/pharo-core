initialize

	super initialize.

	extentHolder := nil asValueHolder.
	needRebuild := true asValueHolder.
	keyStrokesForNextFocusHolder := { KMNoShortcut new } asValueHolder.
	keyStrokesForPreviousFocusHolder := { KMNoShortcut new } asValueHolder.
	additionalKeyBindings := Dictionary new.
	announcer := Announcer new asValueHolder.
	aboutText := self class comment asValueHolder.
	windowIcon := nil asValueHolder.
	window := nil asValueHolder.
	askOkToClose := false asValueHolder.
	
	self initializeWidgets.
	self initializePresenter.
	
	keyStrokesForNextFocusHolder whenChangedDo: [ self registerKeyStrokesForNextFor: self widget ].
	keyStrokesForPreviousFocusHolder whenChangedDo: [ self registerKeyStrokesForPreviousFor: self widget ].