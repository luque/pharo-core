notifyOfChangedCategoriesFrom: oldCollectionOrNil to: newCollectionOrNil
	
	(self hasSubject and: [oldCollectionOrNil ~= newCollectionOrNil]) 
		ifTrue: [
			((newCollectionOrNil ifNil: [ #() ]) difference: (oldCollectionOrNil ifNil: [ #() ])) 
				do: [ :each | self notifyOfAddedProtocol: each ].
			((oldCollectionOrNil ifNil: [ #() ]) difference: (newCollectionOrNil ifNil: [ #() ])) 
				do: [ :each | self notifyOfRemovedProtocol: each ].			
			SystemAnnouncer uniqueInstance classReorganized: self subject].