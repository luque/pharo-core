compileSource: aText notifying: aController

	| source category method |
	
	source := aText asString.
	
	acceptor accept: source asString notifying: aController.