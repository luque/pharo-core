update30324
	"self new update30324"
	self withUpdateLog: '11200 Repeated methods in superclasses, explicit requirement no implemented, repeated methods in traits
	https://pharo.fogbugz.com/f/cases/11200
'.
	self loadTogether: self script116 merge: false.
	self flushCaches.