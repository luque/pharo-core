valueListCache
	^ ValueListCache ifNil: [ValueListCache := WeakKeyDictionary new]