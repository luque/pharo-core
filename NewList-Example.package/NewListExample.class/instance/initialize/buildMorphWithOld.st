buildMorphWithOld
	| list |
	
	pluggable := true.
	
	^ list := PluggableListMorph 
		on: self list: #getItems selected: #getIndex changeSelected: #setIndex: menu: #menu:shifted: