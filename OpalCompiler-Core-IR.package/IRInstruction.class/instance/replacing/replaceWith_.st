replaceWith: aNode
	sequence isNil ifTrue: [self error: 'This node doesn''t have a sequence'].
	sequence replaceNode: self withNode: aNode