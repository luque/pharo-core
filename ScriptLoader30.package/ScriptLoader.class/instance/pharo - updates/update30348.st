update30348
	"self new update30348"
	self withUpdateLog: '-issue 11467 Morph>>addDependent: bug fix. Thanks Igor Stasenko
	Address inspect too.
	https://pharo.fogbugz.com/default.asp?11467
	
- issue 11316 Add when:send:to: and deprecate on:do:
		https://pharo.fogbugz.com/default.asp?11316
		
- issue 11451 migrate on:do: users to when:do:
			https://pharo.fogbugz.com/default.asp?11'.
	self loadTogether: self script140 merge: false.
	self flushCaches.