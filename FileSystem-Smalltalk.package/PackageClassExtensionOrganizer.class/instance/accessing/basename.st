basename
	^ clazz isMeta
			ifTrue: [ 'class' ]
			ifFalse: [ 'instance' ]