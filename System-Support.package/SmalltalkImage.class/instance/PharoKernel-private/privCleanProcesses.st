privCleanProcesses
	UIManager default terminateUIProcess.
	(Process allInstances
		reject: [ :p | 
			{(InputEventFetcher default instVarNamed: #fetcherProcess).
			(Processor activeProcess).
			(WeakArray runningFinalizationProcess).
			(Processor backgroundProcess)} includes: p ])
		do: [ :p | 
			p suspend.
			p terminate ].
	Delay startTimerEventLoop