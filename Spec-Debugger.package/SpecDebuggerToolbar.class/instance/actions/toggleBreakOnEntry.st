toggleBreakOnEntry

	self okToChange ifTrue: [ 
		self session toggleBreakOnEntryFor: self currentContext ]