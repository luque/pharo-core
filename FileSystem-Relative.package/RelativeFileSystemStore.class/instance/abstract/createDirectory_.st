createDirectory: aPath
	^ self store createDirectory: (self resolvePath: aPath)