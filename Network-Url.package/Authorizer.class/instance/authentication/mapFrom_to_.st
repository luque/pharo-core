mapFrom: aKey to: aPerson
	"Establish a mapping from a RFC 1421 key to a user."

	users ifNil: [ users := Dictionary new ].
	aPerson
	 ifNil: [ users removeKey: aKey ]
	 ifNotNil: [
		users removeKey: (users keyAtValue: aPerson ifAbsent: []) ifAbsent: [].
		users at: aKey put: aPerson ]