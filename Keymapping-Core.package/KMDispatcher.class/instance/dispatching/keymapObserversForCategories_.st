keymapObserversForCategories: categories

	^categories collect: [ :cat | KMCategoryTarget 
									target: target realTarget 
									morph: target morph 
									category: cat ].