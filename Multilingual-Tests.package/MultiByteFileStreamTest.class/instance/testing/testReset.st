testReset
	| testString filename  |
	testString := '������������'.
	filename := 'test-file-' , 99 atRandom printString , '.txt'.
	MultiByteFileStream 
		forceNewFileNamed: filename
		do: [ :stream | 
			stream
				nextPutAll: testString;
				crlf ].
	[  
	filename asFileReference
		readStreamDo: [ :stream |
			self assert: (stream peekFor: $� ).
			self assert: (stream peekFor: $� ).
			stream reset.
			self assert: (stream peekFor: $� ).
		] ]
	ensure: [ filename asFileReference ensureDelete ] 