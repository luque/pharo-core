selection
	"The receiver has a list of variables of its inspected object.
	One of these is selected. Answer the value of the selected variable."

	^ self selectionIndex <= self numberOfFixedFields
		ifTrue: [ super selection ]
		ifFalse: [ object perform: (self elements at: self selectionIndex - self numberOfFixedFields) ]