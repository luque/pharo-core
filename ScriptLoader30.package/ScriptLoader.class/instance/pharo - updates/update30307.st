update30307
	"self new update30307"
	self withUpdateLog: '2173 ExternalDropHandler initialize
	https://pharo.fogbugz.com/f/cases/2173
	
11241 There are still some references to the old debugger
	https://pharo.fogbugz.com/f/cases/11241'.
	self loadTogether: self script100 merge: false.
	self flushCaches.