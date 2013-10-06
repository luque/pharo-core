validButtonIds

	^ (self session isContextPostMortem: self currentContext) 
		ifFalse: [ #(
			#resumeButton
			#restartButton 
			#stepIntoButton
			#stepOverButton
			#stepThroughButton
			#fullStackButton
			#runToSelectionButton
			#whereIsButton 
			#createMethodButton) ] 
		ifTrue: [ #(
			#fullStackButton
			#whereIsButton 
			#createMethodButton) ]