update30326
	"self new update30326"
	self withUpdateLog: '- issue 11310 Browser newOnClass: is broken
	https://pharo.fogbugz.com/default.asp?11310

- issue 11304 squeaksource3 should point to http://ss3.gemtalksystems.com/ss/
	https://pharo.fogbugz.com/default.asp?11304
	
- issue 11315 Bad merged methods in version 30323
	https://pharo.fogbugz.com/default.asp?11315
	
- issue 11291 Announcer for Morphs should be Weak
	https://pharo.fogbugz.com/default.asp?11291
'.
	self loadTogether: self script118 merge: false.
	self flushCaches.