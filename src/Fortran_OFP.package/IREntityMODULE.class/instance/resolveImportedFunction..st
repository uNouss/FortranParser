resolving
resolveImportedFunction: aString
	^self famix usedModules flatCollect: [ :m |
		m functions select: [ :f | f name = aString ]
	]