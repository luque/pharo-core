pangoNbCall: fnSpec 
	
	| sender |
	
	sender := thisContext sender.

	^ NBFFICallout  
		handleFailureIn: sender
		nativeCode: [ :gen |
			gen
				sender: sender;
				callType: self nbCallingConvention;
				generateCall: fnSpec module: self pangoLibraryNameOrHandle]