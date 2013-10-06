layoutSized: size
	|layoutInstance layoutClass|
	layoutClass := PointerLayout.
	
	self isBits
		ifTrue: [
			self isBytes
				ifTrue: [ layoutClass := ByteLayout ].
			self isWords 
				ifTrue: [ layoutClass := WordLayout ]]
		ifFalse: [
			self isVariable ifTrue: [ layoutClass := VariableLayout ].
			self isWeak ifTrue: [ layoutClass := WeakLayout ]].
	
	layoutInstance := layoutClass new: size.
	layoutInstance host: self.
	
	^ layoutInstance