pathPrintString
	^ String streamContents: [ :stream | 
			self printPathOn: stream ]