debugSyntaxError: aSynataxError
	"Handle a syntax error.
	
	Note, if there is no #syntaxError registered, it will be silently ignored"
	
	self using: #syntaxError do: [:tool | 
			tool open: (tool syntaxError: aSynataxError)]