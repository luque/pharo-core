methodFilter
	^ self
		title: 'is method change'
		condition: [ :e | e content isEpMethodChange ]