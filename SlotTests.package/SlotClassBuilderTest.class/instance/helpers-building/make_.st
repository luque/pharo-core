make: anUnaryBlock
	"I build a class for testing, providing basic default values, but eventually customized by the received unary block."

	^PharoClassInstaller make: [:builder|
		builder
			superclass: Object;
			name: self aClassName;
			layoutClass: PointerLayout;
			category: self aCategory.
		anUnaryBlock value: builder
		].