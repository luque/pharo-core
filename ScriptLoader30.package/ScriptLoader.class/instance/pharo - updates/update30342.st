update30342
	"self new update30342"
	self withUpdateLog: '
11421 Update Athens from config
	https://pharo.fogbugz.com/f/cases/11421'.
	self loadTogether: self script134 merge: false.
	self flushCaches.