update30566
	"self new update30566"
	self withUpdateLog: '- Issue: 12139 Navigating in menus
	https://pharo.fogbugz.com/f/cases/12139/Navigating-in-menus
	
- Issue 12135 Missing bindings
	https://pharo.fogbugz.com/f/cases/12135/Missing-bindings
	
- 12055 The Spec Debugger should not require the registered inspector to be built on Spec
	https://pharo.fogbugz.com/f/cases/12055/The-Spec-Debugger-should-not-require-the-registered-inspector-to-be-built-on-Spec'.
	self loadTogether: self script222 merge: false.
	self flushCaches.