update30357
	"self new update30357"
	self withUpdateLog: '11126 Unused CI packages load by default in pharo
	https://pharo.fogbugz.com/f/cases/11126
	
'.
	self loadTogether: self script149 merge: false.
	ScriptLoader new unloadPackageNamed: 'CI-Loader'.
ScriptLoader new unloadPackageNamed: 'CI-Core'.
	self flushCaches.