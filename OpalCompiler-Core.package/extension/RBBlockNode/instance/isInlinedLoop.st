isInlinedLoop
	(parent isMessage and: [parent isInlineToDo]) ifTrue: [^ true].
	(parent isMessage and: [parent isInlineWhile]) ifTrue: [^ true].
	(parent isMessage and: [parent parent isArray and: [parent parent parent isMessage and: [parent parent parent isInlineCase]]]) ifTrue: [^ true].
	(parent isMessage and: [parent isInlineCase]) ifTrue: [^ true].  "otherwise branch"
	^ false