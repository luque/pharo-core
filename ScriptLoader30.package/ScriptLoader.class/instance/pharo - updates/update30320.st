update30320
	"self new update30320"
	self withUpdateLog: '11281 Move references to DependentField to proper classes
	https://pharo.fogbugz.com/f/cases/11281'.
	self loadTogether: self script113 merge: false.
	self flushCaches.