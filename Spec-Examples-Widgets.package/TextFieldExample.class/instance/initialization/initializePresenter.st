initializePresenter
	
	textField acceptBlock: [:text | Smalltalk globals at: text asSymbol
								ifPresent: [:class | methodBrowser methods: class methods ]
								ifAbsent: [ methodBrowser methods: {} ]]