removeSubWidgets

	^ SpecInterpreter
		interpretASpec: #(model removeSubWidgets)
		model: self instance
		selector: self selector