wrapWidth: aPositiveIntOrMinusOne
	aPositiveIntOrMinusOne = -1 
		ifTrue:[self primSetWidth: -1 ]
		ifFalse:[self primSetWidth: aPositiveIntOrMinusOne rounded	* PANGO_SCALE ]
	 