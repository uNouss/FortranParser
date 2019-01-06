resolving
resolveFunction: aString 
	^(famix functions
						select: [ :f | f name = aString ])
		ifEmpty: [ famix usedModules flatCollect: [ :m |
			m functions select: [ :f | f name = aString ]
		] ]
