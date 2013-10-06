spread
	self installLayoutVariable.
	self installNewLayouts.
	
	SystemNavigation default allClasses 
		do: [ :cls|
			cls initializeLayout.
			cls class initializeLayout]
		displayingProgress:[:aClass| 'Processing ', aClass name].
	
	AbstractLayout withAllSubclassesDo: [ :s |
		s allInstances do: [ :aLayout |
			self flag: #todo. "Remove the next if moving initialization code to AbstractLayout class."
			aLayout host ifNotNilDo: [ :host |
				aLayout instVarNamed: #compactClassIndex put: host indexIfCompact ] ]].