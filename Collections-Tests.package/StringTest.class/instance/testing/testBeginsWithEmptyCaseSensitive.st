testBeginsWithEmptyCaseSensitive

self deny: ('������������' beginsWithEmpty: '�' caseSensitive: true).
self assert: ('������������' beginsWithEmpty: '����' caseSensitive: true).
self assert: ('������' beginsWithEmpty: '' caseSensitive: true).
self deny: ('������' beginsWithEmpty: '���' caseSensitive: true).
self assert: ('������' beginsWithEmpty: '���' caseSensitive: true).
self assert: ('123test' beginsWithEmpty: '123' caseSensitive: true).
self should: ('aaee' beginsWithEmpty: 'AA' caseSensitive: false).
self should: ('???' beginsWithEmpty: '??' caseSensitive: false).
"self assert: ('������' beginsWithEmpty: '���' caseSensitive: false)."