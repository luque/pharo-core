testOccurrencesOfForMultipliness

| collection elem |
collection := self collectionWithEqualElements .
elem := self elementTwiceInForOccurrences .

self assert: (collection occurrencesOf: elem ) = 2.  