update30344
	"self new update30344"
	self withUpdateLog: '6821 Inconsistent String>>asDate behaviour
	https://pharo.fogbugz.com/f/cases/6821
	
11446 recategorize compareWith:ifLesser:ifEqual:ifGreater:
	https://pharo.fogbugz.com/f/cases/11446
	
11431 #sorted: is broken for some collections
	https://pharo.fogbugz.com/f/cases/11431'.
	self loadTogether: self script136 merge: false.
	self flushCaches.