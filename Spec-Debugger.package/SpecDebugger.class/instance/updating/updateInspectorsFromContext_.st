updateInspectorsFromContext: aContext

	| receiver |
	
	contextInspector inspect: aContext.
	
	receiver := aContext ifNotNil: [ aContext home receiver ].
	receiverInspector inspector: receiver inspector.
	receiverInspector owner: self.