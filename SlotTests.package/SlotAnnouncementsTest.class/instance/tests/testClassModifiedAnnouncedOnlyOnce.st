testClassModifiedAnnouncedOnlyOnce
	
	self assertOnlyOneAnnouncementOf: ClassModifiedClassDefinition within: [
		
		"We create a new class without slots"
		self makeWithLayout: PointerLayout.
		
		"now we extend it with slots.  The class definition should've changed"
		self makeWithLayout: PointerLayout andSlots: { #aSlot }.
	]