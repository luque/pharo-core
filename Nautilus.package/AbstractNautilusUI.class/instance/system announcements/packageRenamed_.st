packageRenamed: anAnnouncement

	window isDisplayed ifFalse: [ ^ self ].
	self showGroups not
		ifTrue: [ self updatePackageView ]