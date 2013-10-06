ownCategories

	"get all categories that are not obtained from traits. Order is random"

	| traitsCategories |
	
	traitsCategories := self subject traits inject: Set new into: [:set :trait |
		set addAll: trait organization categories. set ].
	
	^ (self categories copyWithoutAll: traitsCategories) asArray.
		