update30462
	"self new update30462"
	self withUpdateLog: '11812 replace some #sorted with #sort
	https://pharo.fogbugz.com/f/cases/11812
	
11813 Do not bother to sort #classAndTraitNames
	https://pharo.fogbugz.com/f/cases/11813
	
11814 remove empty package NewClassOrganizer and overlapping Tabs-Support
	https://pharo.fogbugz.com/f/cases/11814
	
11815 includesProtocol: should use #includes:
	https://pharo.fogbugz.com/f/cases/11815'.
	self loadTogether: self script117 merge: false.
	ScriptLoader new unregisterPackage:  'Tabs-Support'.
ScriptLoader new unregisterPackage:  'NewClassOrganizer'.
	self flushCaches.