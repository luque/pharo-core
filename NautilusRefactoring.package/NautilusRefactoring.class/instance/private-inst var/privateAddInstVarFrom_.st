privateAddInstVarFrom: aClass
	| name |
	name := (self
				request: 'Enter the new variable name:'
				initialAnswer: 'inst').

	^ RBAddInstanceVariableRefactoring
		model: environment
		variable: name
		class: aClass theNonMetaClass