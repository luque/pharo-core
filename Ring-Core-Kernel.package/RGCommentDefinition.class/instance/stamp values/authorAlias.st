authorAlias 

	^self annotationNamed: self class authorAliasKey
		ifAbsentPut:[ self class parseAuthorAliasFrom: stamp ]