visitArrayNode: anArrayNode
	anArrayNode statements: (anArrayNode statements collect: [:each | self visitNode: each])