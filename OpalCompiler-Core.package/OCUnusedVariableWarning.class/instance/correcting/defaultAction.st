defaultAction
	| answer |
	
	self errorNotification ifFalse: [ ^nil ].

	answer := UIManager default 
		chooseFrom: #('yes' 'no')
		lines: #() 
		title: node name asWideString, ' appears to be unused in this method. OK to remove it?' withCRs.
	
	(answer = 2 ) ifTrue: [ ^self].
	self methodNode body removeTemporaryNamed: node name.
	self requestor correctFrom: node start to: node stop with: ''.
	
	ReparseAfterSourceEditing signalWithNewSource: self requestor text.
	
	
	
	
	
	
	
	
		