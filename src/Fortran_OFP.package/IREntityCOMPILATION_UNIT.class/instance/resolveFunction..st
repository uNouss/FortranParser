resolving
resolveFunction: aString 
	^(famix module functions
						select: [ :f | f name = aString ])
		ifEmpty: [ 	famix module usedModules flatCollect: [ :m |
			m functions select: [ :f | f name = aString ]
		] ]
