update30353
	"self new update30353"
	self withUpdateLog: '11177 Inst var push down refactoring is buggy
	https://pharo.fogbugz.com/f/cases/11177

11481 More compiler API refactorings
	https://pharo.fogbugz.com/f/cases/11481
	'.
	self loadTogether: self script145 merge: false.
	self flushCaches.