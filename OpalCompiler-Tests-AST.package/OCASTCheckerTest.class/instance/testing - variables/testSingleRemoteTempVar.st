testSingleRemoteTempVar
	| ast |
	ast := (OCOpalExamples>>#singleRemoteTempVar) parseTree.
	self nameAnalysisNoClosureIn: OCOpalExamples for: ast.
	self assert: ast scope isMethodScope.
	self assert: ast scope tempVars size = 3.
	
	self assert: (ast scope lookupVar: 'index') isEscaping.
	self assert: (ast scope lookupVar: 'index') definingScope = ast scope.
	self deny: (ast scope lookupVar: 'block') isEscaping.
	self assert: (ast scope lookupVar: 'collection') isEscaping.
	self assert: (ast scope lookupVar: 'block') isTemp.
	self assert: (ast scope lookupVar: 'collection') isTemp.
	self deny: (ast scope lookupVar: 'collection') isInstance.
	self deny: (ast scope lookupVar: 'index') isInstance.
	self deny: (ast scope lookupVar: 'block') isInstance.
