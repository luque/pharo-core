instance

	^ instance ifNil: [ instance := self initializeInstance. ]