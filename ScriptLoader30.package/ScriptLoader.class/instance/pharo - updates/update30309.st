update30309
	"self new update30309"
	self withUpdateLog: '11258 update 30308 lost class instance variable in ChangeSet
	https://pharo.fogbugz.com/f/cases/11258
	
10097 HandMorph>>showDebugEvents:true --> too small a rectangle with bigger fonts
	https://pharo.fogbugz.com/f/cases/10097
	'.
	self loadTogether: self script102 merge: false.
	self flushCaches.