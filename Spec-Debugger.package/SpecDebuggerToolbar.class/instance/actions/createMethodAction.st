createMethodAction

	self okToChange ifTrue: [  
		self session createMethodInContext: self currentContext ]