update30312
	"self new update30312"
	self withUpdateLog: '11226 Kill update: from Object
	https://pharo.fogbugz.com/f/cases/11226'.
	self loadTogether: self script105 merge: false.
	self flushCaches.