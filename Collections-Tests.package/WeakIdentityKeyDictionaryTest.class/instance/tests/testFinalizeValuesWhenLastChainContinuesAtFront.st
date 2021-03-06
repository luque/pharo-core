testFinalizeValuesWhenLastChainContinuesAtFront

	| objectWithHashModulo dictionary capacity a b c |
	
	objectWithHashModulo := [ :requestedHash :modulo | | object |
        [
		object := Object new.
			object hash \\ modulo = requestedHash ] whileFalse.
        object ].
		
		dictionary := self classToBeTested new.
		capacity := dictionary capacity.
		a := objectWithHashModulo value: capacity - 2 value: capacity.
		dictionary at: a put: 1.
		b := objectWithHashModulo value: capacity - 1 value: capacity.
		dictionary at: b put: 2.
		c := objectWithHashModulo value: capacity - 2 value: capacity.
		dictionary at: c put: 3.
		self assert: dictionary capacity = capacity.
		self assert: (dictionary array at: capacity - 1) key == a.
		self assert: (dictionary array at: capacity) key == b.
		self assert: (dictionary array at: 1) key == c.
		a := nil.
		Smalltalk garbageCollect.
		dictionary finalizeValues.
		self assert: (dictionary includesKey: b).
		self assert: (dictionary includesKey: c).
		self assert: dictionary slowSize = 2.