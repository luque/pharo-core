normalizeSelector: aString
	^ self normalizeIdentifier: (aString copyReplaceAll: ':' with: ' ')