includesBehavior: aClass
	^self == aClass or: [self inheritsFrom: aClass]