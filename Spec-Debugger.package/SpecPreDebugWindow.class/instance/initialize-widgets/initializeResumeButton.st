initializeResumeButton
		
	self resumeButton
		label: 'Proceed';
		state: false;
		"setBalloonText: 'Continue execution' translated;"
		"useSquareCorners;"
		action: [ self resumeAction ]