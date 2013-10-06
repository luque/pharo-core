endOfInitialization

	isInitialized contents: true.

	self updateItems.
	self updateDisplayListCache.
	self updateListSize.
	self updateHeaderTitle.
	self updateHeaderHeight.
	self updateAllowToSelect.
	
	self updateRenderer.
	
	selectedItem contents: self retrieveSelectedItem.
	selectedItems contents: self retrieveSelectedItems.
	
	listCache whenChangedDo: [:e |
			listSize contents: e size.
			self updateDisplayListCache.
			self unselectOnChange
				ifTrue: [ self deselectAll ].
			self updateScrollbars ].
	listSize whenChangedDo: [:e | self updateRenderer ].
	headerTitle whenChangedDo:[:e | self updateHeaderHeight ].
	secondSelection whenChangedDo: [:idx | 
		self setViewToIndex: idx. 
		self renderer updateRectFor: idx ].
	selectedIndex whenChangedDo: [:newIndex :oldIndex | 
		selectedItem contents: self retrieveSelectedItem.
		self renderer updateRectFor: oldIndex. ].
	selectedIndexes whenChangedDo: [:newIndex :oldIndex | selectedItems contents: self retrieveSelectedItems ].
	headerTitle whenChangedDo: [:t | self renderer invalidHeader ].