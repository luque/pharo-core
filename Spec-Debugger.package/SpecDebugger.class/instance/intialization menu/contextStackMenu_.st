contextStackMenu: aMenu
	self flag: 'add action receive as target the toolbar. might not be the best idea.'.
		
	(self session isContextPostMortem: self currentContext) 
		ifTrue: [ self postMortemStackActionMenu: aMenu]
		ifFalse: [ self stackActionMenu: aMenu ].
										
	aMenu addAllFromPragma: 'specDebuggerStackMenu' target: self toolbar.
	
	self flag: 'remove this from here'.
	^ aMenu addAllFromPragma:'specDebuggerStackExtensionMenu' target: self toolbar