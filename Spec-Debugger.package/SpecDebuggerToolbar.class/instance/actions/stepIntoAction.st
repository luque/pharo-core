stepIntoAction

	self okToChange ifTrue: [  
		self session stepInto: self currentContext ]