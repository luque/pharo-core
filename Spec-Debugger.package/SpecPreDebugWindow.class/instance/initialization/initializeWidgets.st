initializeWidgets

	"Only create the widgets if the debugger of not nil.
	It it's nil they will be create when the debugger is changed."
	self debugger ifNotNil: [  
		self createWidgets ]