update30336
	"self new update30336"
	self withUpdateLog: '- issue 11420 Monticello is looking for all ancestors even when there are none
	https://pharo.fogbugz.com/default.asp?11420
	
- issue 11408 https://pharo.fogbugz.com/default.asp?11408
	https://pharo.fogbugz.com/default.asp?11408'.
	self loadTogether: self script128 merge: false.
	self flushCaches.