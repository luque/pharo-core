characterToGlyphMap
	^ characterToGlyphMap ifNil: [ characterToGlyphMap := self createCharacterToGlyphMap ]