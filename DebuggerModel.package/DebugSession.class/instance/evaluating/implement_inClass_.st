implement: aMessage inClass: aClass
	
	aClass
		compile: (DynamicMessageImplementor for: aMessage in: aClass) value
		classified: (self askForCategoryIn: aClass default: 'as yet unclassified').
	
	self interruptedContext privRefreshWith: (aClass lookupSelector: aMessage selector).
	self interruptedContext method numArgs > 0 ifTrue:
		[(self interruptedContext tempAt: 1) arguments withIndexDo:
			[:arg :index|
			self interruptedContext tempAt: index put: arg]].
	
	self contextChanged