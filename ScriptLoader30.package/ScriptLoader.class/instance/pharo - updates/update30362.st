update30362
	"self new update30362"
	self withUpdateLog: '11510 Endless loop trying to get a menu on AbstractNautilusUI
	https://pharo.fogbugz.com/f/cases/11510
	
11518 Failing test: .testLocalMethodsOfTheClassShouldNotBeRepeatedInItsTraits
	https://pharo.fogbugz.com/f/cases/11518
	'.
	self loadTogether: self script154 merge: false.
	self flushCaches.