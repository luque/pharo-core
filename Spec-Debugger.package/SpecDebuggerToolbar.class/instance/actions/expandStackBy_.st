expandStackBy: anInteger
	| selectionIndex |
	
	selectionIndex := self debugger stack selectedIndex.
	self debugger stack items: (self session 
		stackOfSize: anInteger + self debugger stack listSize).
	self debugger stack setSelectedIndex: selectionIndex.
	
	self updateFullStackButton
	