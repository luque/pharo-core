initializeInstance

	^ SpecInterpreter
		private_interpretASpec: 
			{ self classSymbol.
				#color:. self defaultColor} 
		model: DummyComposableModel new
		selector: self selector