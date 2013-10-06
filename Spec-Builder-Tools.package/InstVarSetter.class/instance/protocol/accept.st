accept
	| instVars desc |
	desc := descriptionHolder contents.
	desc ifNil: [ ^ self ].
	
	text accept.
	instVars := textBindings select: [:assoc | assoc notNil and: [ assoc values anySatisfy: [:v | v value ]]].
	instVars associations do: [:assoc || instVar source events |
		instVar := assoc key.
		source := String streamContents: [:s | s << 'register' << instVar name capitalized << 'Events'].
		desc addCodeToInitialize: 'self ', source order: 1.
		desc addMethodWithSource: source category: 'initialization'.
		events := assoc value select: [:a | a value ].
		events associations do: [:a || src |
			src := String streamContents: [:s | s << instVar name << ' ' << a key asString << ': '  << a value key  << '.'].
			desc addCodeTo: source source: src order: 1 ]].