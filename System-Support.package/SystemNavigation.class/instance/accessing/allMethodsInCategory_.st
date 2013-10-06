allMethodsInCategory: category 
	"Answer the collection of methods that are contained in a particular method category"
	
	"SystemNavigation new allMethodsInCategory: 'printing'"

	| aCollection |
	aCollection := Set new.
			self allBehaviorsDo: [ :behavior | 
				(behavior organization listAtCategoryNamed: category) 
					do: [ :sel | 
						aCollection add: (self createMethodNamed: sel realParent: behavior) ] ].
	^aCollection.