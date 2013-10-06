pathName: p isEncoded: isEncoded
	| encodingConverter |
	encodingConverter := LanguageEnvironment defaultFileNameConverter.
	isEncoded ifTrue: [
		squeakPathName := p convertFromWithConverter: encodingConverter.
		vmPathName := p.
	] ifFalse: [
		squeakPathName := p isOctetString ifTrue: [p asOctetString] ifFalse: [p].
		vmPathName := squeakPathName convertToWithConverter: encodingConverter.
	].