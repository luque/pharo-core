update30313
	"self new update30313"
	self withUpdateLog: '4142 Suggestions: move examples from UIThemes class to ExampleBuilderMorph class
	https://pharo.fogbugz.com/f/cases/4142
	
11261 isNil ifTrue: to ifNil: part 1
	https://pharo.fogbugz.com/f/cases/11261
	
11262 isNil ifTrue: to ifNil: part 2
	https://pharo.fogbugz.com/f/cases/11262'.
	self loadTogether: self script106 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages. 
	.
	self flushCaches.