testindexOfstartingAt

	self assert: ('aa aa �� aa aa' indexOf: $a startingAt: 8) = 10.
	self assert: ('aa aa �� aa aa' indexOf: $z startingAt: 8) = 0.