default
	^ Singleton ifNil: [ Singleton := self new ]