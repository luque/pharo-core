testPointerCannotExtendWord

	self shouldnt: [ :builder | 
			builder layoutClass: WordLayout ]
		extendWith: [ :builder | 
			builder layoutClass: PointerLayout ]