update30308
	"self new update30308"
	self withUpdateLog: '11162 clean up #noteClassStructure: in Changeset
	https://pharo.fogbugz.com/f/cases/11162/'.
	self loadTogether: self script101 merge: false.
	self flushCaches.