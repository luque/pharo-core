initializeStepOverButton

	self stepOverButton
		label: 'Over';
		state: false;
		askBeforeChanging: true;
		action: [ self stepOverAction ]