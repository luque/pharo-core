initializeStepThroughButton

	self stepThroughButton  
		label: 'Through';
		state: false;
		askBeforeChanging: true;
		action: [ self stepThroughAction ]