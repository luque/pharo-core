update30338
	"self new update30338"
	self withUpdateLog: '11428 Remove a buggy redundant test in FuelTests
	https://pharo.fogbugz.com/f/cases/11428
	
11417 Test for checking repeated code in superclasses must not watch in nativeBoost classes
	https://pharo.fogbugz.com/f/cases/11417
	
'.
	self loadTogether: self script130 merge: false.
	self flushCaches.