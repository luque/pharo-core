configurationReference
	^ gofer references
		detect: [ :ref| ref isConfigurationReference ]
		ifNone: [ Error signal: 'Could not find a valid ConfigurationReference' ].