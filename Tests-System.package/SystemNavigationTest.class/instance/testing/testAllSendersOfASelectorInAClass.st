testAllSendersOfASelectorInAClass
	| senders selector inClass |
	selector := #nextPutAll:.
	inClass := True.
	senders := self systemNavigationToTest allSendersOf: selector inClass: inClass.
	self assert: senders size = 1.
	senders do: [ :methodRef | 
		self assert: methodRef className = inClass name
	].
	#(1 #printOn:) pairsDo: [ :index :selectorRef |
		self assert: ((senders at: index) selector = selectorRef)
	]