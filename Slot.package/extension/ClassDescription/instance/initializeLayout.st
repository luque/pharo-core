initializeLayout
	(self class allInstVarNames includes: #layout) 
		ifFalse: [ ^ self ].
		
	layout ifNotNil: [ ^ self ].
	
	self superclass ifNotNil: [ self superclass initializeLayout ].
	
	layout := SlotVirus newLayoutFor: self