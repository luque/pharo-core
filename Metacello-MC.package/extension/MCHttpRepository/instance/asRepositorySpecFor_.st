asRepositorySpecFor: aMetacelloMCProject

	^(aMetacelloMCProject repositorySpec)
		description:  self description;
	 	type: 'http';
		yourself