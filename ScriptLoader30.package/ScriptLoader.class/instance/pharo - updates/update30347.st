update30347
	"self new update30347"
	self withUpdateLog: '11464 Switch RBPackageEnvironment to RPackage
	https://pharo.fogbugz.com/f/cases/11464
	
11449 Remove Time class >> #namesForTimes:
	https://pharo.fogbugz.com/f/cases/11449'.
	self loadTogether: self script139 merge: false.
	self flushCaches.