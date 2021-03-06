testReadIntoStartingAtCountFromStream
	| encoder |
	encoder := ZnUTF8Encoder new.
	#( 'ccc' '���' 'c' '�' '�c' 'c�' '��' ) do: [ :each |
		#( ( '' '' ) ( 'ABC' '' ) ( '' 'ABC' ) ( 'ABC' 'ABC' ) 
			( 'A�C' '' ) ( '' 'A�C' ) ( 'A�C' 'A�C' ) 
			( 'AXC' 'A�C' ) ( 'A�C' 'AXC' ) 
			( 'PRE' '�' ) ) do: [ :extra |
				| prefix postfix string bytes buffer |
				prefix := extra first.
				postfix := extra last.
				string := prefix, each.
				bytes := encoder encodeString: string, postfix.
				buffer := String new: string size.
				encoder readInto: buffer startingAt: 1 count: string size fromStream: bytes readStream.
				self assert: buffer equals: string ] ]