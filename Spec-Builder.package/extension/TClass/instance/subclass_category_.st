subclass: newName category: newCategory

	| result |
	result := self subclass: newName
					instanceVariableNames: ''
					classVariableNames: ''
					poolDictionaries: ''
					category: newCategory.
	^ result 
		ifNil: [ Smalltalk at: self name ifAbsent: [ nil ]]
		ifNotNil: [ result ]