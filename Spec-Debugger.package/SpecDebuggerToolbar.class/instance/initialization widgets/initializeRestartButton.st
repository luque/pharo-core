initializeRestartButton

	self restartButton
		label: 'Restart';
		state: false;
		askBeforeChanging: true;
		action: [ self restartAction ]