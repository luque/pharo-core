update30340
	"self new update30340"
	self withUpdateLog: '11453 Disable some shady tests in NB
	https://pharo.fogbugz.com/f/cases/11453
	
11445 Monticello refactoring to allow better FileTree support
	https://pharo.fogbugz.com/f/cases/11445
'.
	self loadTogether: self script132 merge: false.
	self flushCaches.