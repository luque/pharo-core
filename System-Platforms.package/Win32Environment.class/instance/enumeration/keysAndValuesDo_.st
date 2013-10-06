keysAndValuesDo: aBlock
	"Under windows the environemtn variables are a single big String."
	|  environmentStrings nexString |
	environmentStrings := self environmentStrings.
	
	[ 
		nexString := environmentStrings readString.
		nexString ifEmpty: [ ^ self ].
		self 
			keysAndValuesDo: aBlock
			withAssociationString:  nexString.
		environmentStrings := NBExternalAddress value: (environmentStrings value + nexString size + 1)
	] repeat.