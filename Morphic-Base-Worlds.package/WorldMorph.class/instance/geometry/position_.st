position: aPoint
	"Prevent moving a world (e.g. via HandMorph>>specialGesture:)"

	super position: aPoint.
	self viewBox ifNotNil: [self viewBox: (aPoint extent: self viewBox extent)].
