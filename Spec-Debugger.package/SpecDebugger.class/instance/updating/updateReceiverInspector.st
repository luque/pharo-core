updateReceiverInspector

	"only refresh the receiverInspector"
	self needRebuild: false.	
	code needRebuild: false.
	contextInspector needRebuild: false.
	stack needRebuild: false.
	toolbar needRebuild: false.
	
	self buildWithSpec.
	self setFocusOrder