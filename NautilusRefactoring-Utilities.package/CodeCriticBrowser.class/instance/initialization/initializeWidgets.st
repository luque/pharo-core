initializeWidgets

	self instantiateModels: #(
		listModel1 	ListComposableModel
		listModel2 	ListComposableModel
		listModel3 	ListComposableModel
		textModel 	TextModel ).
	
	listModel1 displayBlock: [:rule | rule name ].
	listModel2 displayBlock: [:rule | rule name ].
	listModel3 displayBlock: [:rule | rule name ].