loadConfiguration
	| configuration metacelloVersion |
	configuration := self configuration.
	version ifNotNil: [ 
		metacelloVersion := configuration version: self version ].
	metacelloVersion load