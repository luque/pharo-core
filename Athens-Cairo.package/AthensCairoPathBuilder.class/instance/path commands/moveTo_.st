moveTo: aPoint
	
	endPoint := self toAbsolute: aPoint.
	
	^ self moveToX: endPoint x asFloat Y: endPoint y asFloat 