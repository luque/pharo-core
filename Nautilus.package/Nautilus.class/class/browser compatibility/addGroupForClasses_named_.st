addGroupForClasses: aCollection named: aName

	self groupsManager addADynamicClassGroupSilentlyNamed: aName name block: [ aCollection ].