close
	
	self removeActionsForSession: self session.
	contextInspector close.
	receiverInspector inspector close.
	"No more code should follow after this, as the session might terminate this process."
	self session ifNotNil: [ :aSession | aSession terminate]