fillRectangle: aRect on: anAthensCanvas
	self loadOn: anAthensCanvas.
	anAthensCanvas 
		newPath;
		rectangleX: aRect left
		y: aRect top 
		width: aRect width
		height: aRect height.

	self strokeOn: anAthensCanvas.	