selectedObjectIndex
	"Answer the index of the inspectee's collection that the current selection refers to."

	| basicIndex |
	basicIndex := selectionIndex - self numberOfFixedFields.
	^ (object size <= (self i1 + self i2)  or: [basicIndex <= self i1])
		ifTrue: [basicIndex]
		ifFalse: [object size - (self i1 + self i2) + basicIndex]