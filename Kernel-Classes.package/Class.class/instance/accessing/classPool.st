classPool
	"Answer the dictionary of class variables."

	classPool == nil
		ifTrue: [classPool := Dictionary new].
		
	^classPool.