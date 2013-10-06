testClassRecategorizedAnnounced

	SystemAnnouncer uniqueInstance weak 
		on: ClassRecategorized 
		send: #saveAnnouncementOnce: 
		to: self.
	
	aClass := self make: [:builder|
		builder category: self aCategory ].	
	anotherClass := self make: [:builder|
		builder category: self anotherCategory ].
	
	self assert: announcement oldCategory equals: self aCategory.
	self assert: announcement newCategory equals: self anotherCategory.
	self assert: announcement classRecategorized == anotherClass.