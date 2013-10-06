buildButtonWidgetsSpec
	| specs |

	specs := OrderedCollection new.
	
	(self session isContextPostMortem: self debugger interruptedContext)
		ifFalse: [ specs addAll: {#resumeButton. #ButtonModel}. ]. "Only proceed if there is a process available."
	
	specs addAll: {#abandonButton. #ButtonModel}.
	specs addAll: {#debugButton. #ButtonModel}.	
	
	self session isInterruptedContextDoesNotUnderstand 
		ifTrue: [ specs addAll: {#createMethodButton. #ButtonModel}].

	^ specs
	