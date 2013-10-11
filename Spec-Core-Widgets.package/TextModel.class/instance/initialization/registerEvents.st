registerEvents

	textHolder whenChangedDo: [ self changed: #getText ].
	readSelectionHolder whenChangedDo: [ self changed: #readSelection ].
	enabledHolder whenChangedDo: [ :bool | self changed: #enabled: with: { bool } ].
	hasUnacceptedEdits whenChangedDo: [ :bool | self changed: #hasUnacceptedEdits: with: { bool } ].
	selection whenChangedDo: [:block | self changed: #setSelectionFromModel: with: { block value } ].
	scrollValue whenChangedDo: [ :newPosition | self changed: #setScrollValue: with: { newPosition } ]