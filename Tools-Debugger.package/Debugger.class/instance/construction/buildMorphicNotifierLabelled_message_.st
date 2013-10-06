buildMorphicNotifierLabelled: label message: messageString

	| notifyPane window extentToUse row|
	self expandStack.
	window := (PreDebugWindow labelled: label) model: self.
	extentToUse := 450 @ 156. "nice and wide to show plenty of the error msg"
	
	window
		addMorph: (row := self buttonRowForPreDebugWindow: window)
		fullFrame: ((0@0 corner: 1@0) asLayoutFrame bottomOffset: row minExtent y).
	
	row color: Color transparent.
	messageString notNil
		ifFalse:
			[notifyPane := self buildNotifyListPane: self ]
		ifTrue:
			[notifyPane := self buildNotifyTextPane: self.
			notifyPane editString: (self preDebugNotifierContentsFrom: messageString);
				askBeforeDiscardingEdits: false].
	window
		addMorph: notifyPane
		fullFrame: (LayoutFrame identity topOffset: 24).
	window setBalloonTextForCloseBox.
	window openInWorldExtent: extentToUse.
	window currentWorld displayWorld. "helps with interrupt not working somehow."
	^window