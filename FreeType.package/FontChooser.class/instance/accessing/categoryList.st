categoryList
	^OrderedCollection new
		addAll: (TextStyle actualTextStyles keysSortedSafely);
		yourself.