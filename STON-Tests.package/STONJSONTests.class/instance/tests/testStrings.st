testStrings
	self assert: (STONJSON toString: 'string') equals: '"string"'.
	self assert: (STONJSON toString: '') equals: '""'.
	self assert: (STONJSON toString: '�l�ves fran�ais') equals: '"�l�ves fran�ais"'.
	self assert: (STONJSON toString: String crlf) equals: '"\r\n"'.
	self assert: (STONJSON fromString: '"string"') equals: 'string'.
	self assert: (STONJSON fromString: '""') equals: ''.
	self assert: (STONJSON fromString: '"�l�ves fran�ais"') equals: '�l�ves fran�ais'.
	self 
		assert: (STONJSON fromString: '"\u212B \"Angstrom Symbol\""') 
		equals: 8491 asCharacter asString, ' "Angstrom Symbol"'.