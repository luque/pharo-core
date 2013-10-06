defaultOptions
	^ #(
	"by default we inline all optimized constructs"
	+ optionInlineIf
	+ optionInlineIfNil
	+ optionInlineAndOr
	+ optionInlineWhile
	+ optionInlineToDo
	+ optionInlineCase
	
	- optionIlineNone "to turn off all. Overrides the others" 	
	- optionLongIvarAccessBytecodes "special for Contexts"
	+ optionOptimizeIR "disabled for now"
	)