isSelectorsOnly
	| previous |
	previous := ranges at: completionIndex - 1.
	^previous isOpening