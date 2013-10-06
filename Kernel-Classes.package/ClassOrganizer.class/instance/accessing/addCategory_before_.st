addCategory: catString before: nextCategory
	| oldCategories |
	
	oldCategories := self categories copy.
	
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		super addCategory: catString before: nextCategory].
	
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.